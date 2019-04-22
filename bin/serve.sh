#!/bin/bash

# npm install -g live-server
cd "$(dirname "$0")"
cd ..

port=8100
host=0.0.0.0
(sleep 3;
 urlTest="http://127.0.0.1:${port}/localhost:${port}/index.iframed.src.html";\
  echo "[INFO] Open ${urlTest}";\
   open ${urlTest}) &

live-server --no-browser --port=${port} --host=${host} --entry-file=index-404.src.html