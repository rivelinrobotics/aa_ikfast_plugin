# IK Fast Plugin : Yaskawa Motoman GP8 + FT Sensor + ee0
1. Add the package to the `.external_repos.yaml` file in the main repository. Always pin a specific commit, don't use a branch unless the repository is owned by us.
```
   robin_arm_with_end_effector_ikfast_plugin:
    type: git
    url: https://github.com/additiveautomations/robin_arm_with_end_effector_ikfast_plugin.git
    version: b3c4e5ba69721dce13f49f602048ab3252244764
```

2. Import `make import-external-repos`
3. `ls external/src/` check new repository has been downloaded
`make shell`
4. In the shell switch to the external workspace `cd external`
5. Build the module: `catkin_make robin_arm_with_end_effector_ikfast_plugin`
