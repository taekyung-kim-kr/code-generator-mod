#!/bin/bash

docker run -it --rm -v $(pwd)/script:/script kubernetes-codegen:1.13.4 /bin/bash
