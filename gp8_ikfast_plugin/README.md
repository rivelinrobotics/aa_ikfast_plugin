# Generating an ikfast plugin for the motoman gp8

There needs to be one ros package per moveit planning group the steps below generate a kinematic plugin for a single planning group.

1. Clone this into repo `external/src/`
2. Edit parameters in update_ikfast_plugin,sh
3. Start aa-ros twin with FAKE_CONTROL=1 with the desired end effector
4. Export the SRDF `rosparam get -p /yaskawa/robot_description_semantic > robot.srdf`
5. Move the SRDF to `internal/src/aa_moveit/config`
6. Launch a new shell
7. In the shell install python lxml `sudo apt-get update; sudo apt-get install python3-lxml`
8. cd `external/src/gp8_ikfast_plugin`
9. `cp create_ikfast_moveit_plugin.py /opt/ros/noetic/lib/moveit_kinematics/` - this will become uneccessary with a pending noetic release.
10. Run the script `bash update_ikfast_plugin,sh`
11. This outputs the new module into external/src/gp8_ikfast_plugin/ and updates your moveit kinematics.yaml for you
12. Create a new git repository for this module and link in via .external_repos.yaml
13. Rebuild your external workspace with `catkin_make`
14. Remove this module from your external workspace
