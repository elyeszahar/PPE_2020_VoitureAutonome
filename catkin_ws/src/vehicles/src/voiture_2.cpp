#include "../include/Vehicles.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include <cmath>
#include <iostream>
#include <sstream>

#define STATION_ID 2 // 1 ID par station

int main(int argc, char **argv) {

  // INIT
  ros::init(argc, argv, "vehicle_2");
  ros::Time::init();
  ros::Rate loop_rate(FREQ);
  uint8_t rank = 0;

  // TODO /ODOM Changer quand on aura plusieurs vehicules
  Vehicles v2 = Vehicles("tb3_1/odom", STATION_ID);
  Position pos = Position(51, 51, 0);
  v2.setDest(pos);

  ROS_INFO("Voiture 2 lancee");

  // Attendre d'avoir une connection avec un subscriber au moins
  while (v2.getPubEce_C().getNumSubscribers() < 1) {
  }

  // Envoyer message INIT au démarrage et si changement de destination
  v2.fill_ece_data(ID_CONTROLER, INIT_PHASE, 0);

  while (ros::ok()) {
    ros::spinOnce();

    // Attendre d'avoir une connection avec un subscriber au moins
    while (v2.getPubCAM_C().getNumSubscribers() < 1) {
    }

    // Envoyer CAM en boucle au controler
    // v2.fill_cam_data(ID_CONTROLER);

    // Parcourir le platoon du véhicule
    std::map<uint8_t, uint8_t> map_rank = v2.getPlatoon().getMapRank();
    std::map<uint8_t, uint8_t>::iterator it = map_rank.begin();
    while (it != map_rank.end()) {

      // Récupérer le rang de la voiture actuelle
      if (it->first == v2.getStationId()) {
        rank = it->second;
      }
      it++;
    }

    // Parcourir le platoon du véhicule
    it = map_rank.begin();
    while (it != map_rank.end()) {

      // Si l'ID du véhicule n'est pas celui parcouru dans la map du
      // platoon et que son rang est supérieur + 1
      if ((it->first != v2.getStationId()) && (it->second == rank + 1)) {
        // Envoyer CAM en boucle au véhicule correspondant à l'ID
        v2.fill_cam_data(it->first);
        ROS_INFO("Envoie message CAM au vehicule : %d", it->first);
      }
      it++;
    }

    loop_rate.sleep();
  }
  //}

  // Envoyer CAM en boucle si platoon et si voiture de tete aux autres
  // vehicules Envoyer DENM au controler et aux voitures (déterminer
  // lesquelles selon positiond ans le platoon)

  // Envoyer ECE a controler si desinsertion

  return 0;
}