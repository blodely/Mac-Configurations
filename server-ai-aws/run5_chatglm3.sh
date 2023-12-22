#!/bin/bash
# Created by Luo Yu

cd 
sudo docker run -it -d --name chatglm3_6b_api -p 8000:8000 -v /data/models/chatglm3-6b:/workspace/THUDM/chatglm3-6b --gpus all -e NVIDIA_DRIVER_CAPABILITIES=compute,utility -e NVIDIA_VISIBLE_DEVICES=all blodely/chatglm3-6b:1.0.0

echo ""
sudo docker ps -a

