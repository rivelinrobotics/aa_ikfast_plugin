search_mode=OPTIMIZE_MAX_JOINT
srdf_filename=robin.srdf
robot_name_in_srdf=robin
moveit_config_pkg=robin_moveit_config
robot_name=robin
planning_group_name=gp8_for_toolchange
ikfast_plugin_pkg=robin_gp8_for_toolchange_ikfast_plugin
base_link_name=robin_base_link
eef_link_name=axia80_mate
ikfast_output_path=/home/aa-ros/checkout/tmp_ikfast_workspace/robin_gp8_for_toolchange_ikfast_plugin/src/robin_gp8_for_toolchange_ikfast_solver.cpp

rosrun moveit_kinematics create_ikfast_moveit_plugin.py\
  --search_mode=$search_mode\
  --srdf_filename=$srdf_filename\
  --robot_name_in_srdf=$robot_name_in_srdf\
  --moveit_config_pkg=$moveit_config_pkg\
  $robot_name\
  $planning_group_name\
  $ikfast_plugin_pkg\
  $base_link_name\
  $eef_link_name\
  $ikfast_output_path
