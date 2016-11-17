#!/bin/bash

curl http://www.joelsartore.com/galleries/the-photo-ark/ -o main.html

mkdir photos && cd photos
for url in $(python ../parse.py); do
  echo "fetching $url"
  curl -O -s $url &
done
wait
cd -
echo "done downloading!"

# would much rather use gzip but not everyone knows how to use gzipped files
zip photos.zip photos/*
