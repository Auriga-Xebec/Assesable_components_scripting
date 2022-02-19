#!/bin/bash

echo "Enter a download source"
read download_source
echo "Enter download destination"
read download_destination
wget -P "$download_destination" "$download_source" 