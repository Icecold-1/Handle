#!/bin/bash

echo "generating responses..."

/genrsp.sh /response.txt

#cat /response.txt | hdl-setup-server /hdl_svr