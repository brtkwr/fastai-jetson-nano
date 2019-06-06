#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y purge \
	python3-numpy python3-scipy \
	python3-matplotlib python3-pandas python3-pil

sudo apt-get -y install \
	python3-pip build-essential python-dev git \
	cython python-requests python-typing \
	g++ cmake python-dev \
	nodejs npm freetype2-demos \
	zlib1g-dev zip libjpeg8-dev libhdf5-dev \
	libhdf5-serial-dev hdf5-tools \
	# python-cuda python-dataclasses \
	pkg-config libfreetype6-dev libpng-dev \
	libblas3 liblapack3 liblapack-dev libblas-dev \
	gfortran htop
