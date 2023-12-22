#!/bin/bash
# Created by Luo Yu (blodely@gmail.com)
# Friday, December 22, 2023

echo ""
sudo docker run -it -d --name xinference -p 9997:9997 -v /data/workspace:/workspace --gpus all blodely/xinference:1.0.0
echo ""
sudo docker ps -a
