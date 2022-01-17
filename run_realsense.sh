#! /usr/bin/bash -i
cd /home/yang/code/ORB_SLAM2
coa KittiSeg
python data/associate.py /home/yang/code/tof/record_realsense/data/rgb.txt /home/yang/code/tof/record_realsense/data/depth.txt \
 > /home/yang/code/tof/record_realsense/data/associations.txt
# ./Examples/RGB-D/rgbd_tum Vocabulary/ORBvoc.txt Examples/RGB-D/TUMX.yaml PATH_TO_SEQUENCE_FOLDER ASSOCIATIONS_FILE
./Examples/RGB-D/rgbd_tum Vocabulary/ORBvoc.txt Examples/RGB-D/realsense.yaml /home/yang/code/tof/record_realsense/data /home/yang/code/tof/record_realsense/data/associations.txt
mv KeyFrameTrajectory.txt CameraTrajectory.txt -t /home/yang/code/tof/record_realsense/data/