Used TUM camera trajectory data: fr1/desk

The data is available from below page.
https://vision.in.tum.de/data/datasets/rgbd-dataset/download

And I experienced below error occurred when loading raw trajectory file (like cam0_gt_raw.txt) and executing the "evo_traj" command.
```
[ERROR] TUM trajectory files must have 8 entries per row and no trailing delimiter at the end of the rows (space)
```

Then I referred and follow the processes written on https://github.com/MichaelGrupp/evo/issues/218. And the problem is solved. i.e.
```
cd ./tum && cut --delimiter " " --fields 1-8 cam0_gt_raw.txt > cam0_gt.txt && cd ..
```
and remove the empty lines on cam0_gt.txt.