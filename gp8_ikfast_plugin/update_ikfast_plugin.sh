search_mode=OPTIMIZE_MAX_JOINT
srdf_filename=yaskawa.srdf
robot_name_in_srdf=yaskawa
moveit_config_pkg=aa_moveit
robot_name=gp8
planning_group_name=gp8_only
ikfast_plugin_pkg=gp8_${planning_group_name}_ikfast_plugin
base_link_name=${robot_name_in_srdf}_base_link
eef_link_name=${robot_name_in_srdf}_tool0
ikfast_output_path=$(pwd)/src/gp8_ikfast_solver.cpp

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
