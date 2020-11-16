#!/bin/bash

echo "generating responses..."

/handle-server/handle-9.3.0/bin/genrsp.sh /handle-server/handle-9.3.0/bin/response.txt

cat /handle-server/handle-9.3.0/bin/response.txt | ./hdl-setup-server /hdl_svr