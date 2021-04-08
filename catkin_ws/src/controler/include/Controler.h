#include "../../devel/include/ece_msgs/ecemsg.h"
#include "../../devel/include/etsi_msgs/CAM.h"
#include "../../devel/include/etsi_msgs/DENM.h"
#include "../../devel/include/etsi_msgs/SPAT.h"
#include "Platoon.h"
#include "ros/ros.h"
#include <vector>

#define TRUE 1
#define FALSE 0
#define STATION_TYPE 16      // Controler (inventé)
#define STATION_ID 0         // 1 ID par station
#define VERSION_PROTOCOL 131 // EN 302 637-3 v1.3.1.
#define ECE_FRAME "/ece"
#define CAM_FRAME "/cam"
#define DENM_FRAME "/denm"
#define DENM_ID 1
#define CAM_ID 2
#define ECE_ID 8
#define ID_CONTROLER 0
#define ID_VEHICULE_1 1
#define ID_VEHICULE_2 2
#define ID_VEHICULE_3 3
#define INIT_PHASE 0
#define INSERT_PHASE 1
#define DESINSERT_PHASE 2
#define LIGHT_PHASE 3
#define BRAKE_PHASE 4

class Controler {

private:
  std::vector<Vehicle *> vector_v;
  std::vector<Platoon *> vector_p;
  ros::Publisher pub_ece;
  ros::Publisher pub_DENM;
  ros::Subscriber sub_ece;
  ros::Subscriber sub_DENM;
  ros::Subscriber sub_CAM;
  ros::Subscriber sub_SPAT;
  ros::NodeHandle n;
  uint64_t count;

public:
  Controler();
  ~Controler();

  std::vector<Vehicle *> getVectorV();
  std::vector<Platoon *> getVectorP();
  ros::Publisher getPubEce();
  ros::Publisher getPubDENM();
  ros::Subscriber getSubEce();
  ros::Subscriber getSubCAM();
  ros::Subscriber getSubDENM();
  ros::Subscriber getSubSPAT();
  uint64_t getCount();
  ros::NodeHandle getNodeHandle();

  void setVectorV(std::vector<Vehicle *> vector_v);
  void setVectorP(std::vector<Platoon *> vector_p);
  void setPubEce(ros::Publisher pub);
  void setPubDENM(ros::Publisher pub);
  void setSubEce(ros::Subscriber sub);
  void setSubCAM(ros::Subscriber sub);
  void setSubDENM(ros::Subscriber sub);
  void setSubSPAT(ros::Subscriber sub);
  void setCount(uint64_t count);
  void setNodeHandle(ros::NodeHandle n);

  static void sub_ece_callback(const ece_msgs::ecemsg::ConstPtr &msg,
                               Controler *c);
  static uint8_t sub_DENM_callback(const etsi_msgs::DENM::ConstPtr &msg,
                                   Controler *c);
  static uint8_t sub_CAM_callback(const etsi_msgs::CAM::ConstPtr &msg,
                                  Controler *c);
  static uint8_t sub_SPAT_callback(const etsi_msgs::SPAT::ConstPtr &msg,
                                   Controler *c);

  // Ajouter un véhicule
  void add_vehicle(Vehicle *v);

  // Ajouter un platoon
  void add_platoon(Platoon *p);

  // Incrémente le compteur
  void increment_counter();

  // Méthode pour checker destination et créer platoon après
  // ou modif platoon
  void search_for_platoon(Vehicle *v);

  void new_platoon(Vehicle *v);

  void fill_header(ece_msgs::ecemsg &msg, char *frame, uint8_t msg_id);

  uint8_t init_receive(ece_msgs::ecemsg &msg);
  uint8_t insert_receive(ece_msgs::ecemsg &msg);
  uint8_t insert_send(Platoon *p);
  uint8_t desinsert_receive(ece_msgs::ecemsg &msg);
  void desinsert_send(uint8_t dest_id);
  uint8_t feux(ece_msgs::ecemsg &msg);
  uint8_t freinage_urg(ece_msgs::ecemsg &msg);

  uint8_t publish_ece_msg(ece_msgs::ecemsg msg);
  uint8_t publish_DENM_msg(etsi_msgs::DENM msg);
};