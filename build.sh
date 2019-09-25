#!/bin/bash
autoreconf --install
./configure
make all -j25
cd images
./getresources
./buildpbaroot
./buildbios
./buildUEFI64
./buildrescue Rescue32
./buildrescue Rescue64

