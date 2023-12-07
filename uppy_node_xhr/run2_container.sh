#!/bin/bash

mkdir uploads
sudo docker run -it -d --rm --name uppy_nodexhr -p 5173:5173 -p 3020:3020 -v ./uploads:/app/examples/node-xhr/uploads rick/uppy-node-xhr:1.0.0
