#!/bin/bash
sudo fallocate -| Sl /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
