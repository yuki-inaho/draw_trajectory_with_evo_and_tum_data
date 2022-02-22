#!/bin/bash

SCRIPT_DIR=$(dirname `readlink -f "$0"`)
TRAJECTORY_FILE_PATH="${SCRIPT_DIR%/}/tum/cam0_gt.txt"
echo "trajectory file path: $TRAJECTORY_FILE_PATH"
evo_traj tum $TRAJECTORY_FILE_PATH --plot