search_mode=OPTIMIZE_MAX_JOINT
srdf_filename=yaskawa.srdf
robot_name_in_srdf=yaskawa
moveit_config_pkg=yaskawa_moveit_config
robot_name=yaskawa
planning_group_name=gp8_axia80_ee0
ikfast_plugin_pkg=gp8_axia80_ee0_ikfast_plugin
base_link_name=yaskawa_base_link
eef_link_name=tool_tip
ikfast_output_path=/home/rob/checkout/tmp_ikfast_workspace/gp8_axia80_ee0_ikfast_plugin/src/yaskawa_gp8_axia80_ee0_ikfast_solver.cpp

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
