#!/bin/bash

echo "generating responses..."

cd /handle-server/handle-9.3.0/bin/

/genrsp.sh response.txt

cat response.txt | ./hdl-setup-server /hdl_svr