#!/bin/bash
##########################################################################################
# Author; Cristian Segura                                                                #
# Creation Date: 2017/05/20 07:38:56                                                     #
#----------------------------------------------------------------------------------------#
#                                                                                        #
# Testing Platform                                                                       #
#                                                                                        #
#  VirtualBox VM Settings                                                                #
#    - OS:  CentOS Linux release 7.3.1611 (Core)                                         #
#    - Kenel: 3.10.0-514.10.2.el7.x86_64                                                 #
#                                                                                        #
##########################################################################################

#----------------------------------------------------------------------------------------#
# Variables                                                                              #
#----------------------------------------------------------------------------------------#

tstamp=$(date +%Y%m%d%H%M%S)

ast_url="http://downloads.asterisk.org/pub/telephony/asterisk"
ast_tarfile="asterisk-13-current.tar.gz"
ast_src_dir=""

dahdi_url="http://downloads.asterisk.org/pub/telephony/dahdi-linux-complete"
dahdi_tarfile="dahdi-linux-complete-current.tar.gz"
dahdi_src_dir=""

libpri_url="http://downloads.asterisk.org/pub/telephony/libpri"
libpri_tarfile="libpri-current.tar.gz"
libpri_src_dir=""

workdir="${tstamp}_asterisk_downloads"


#---------------------------------------------------------------------------------------#
# INSTALL DEPENDENDIES                                                                  #
#---------------------------------------------------------------------------------------#

# Install Utilities (optional)
yum -y install vim  # advanced text-editor
yum -y sed          # stream editor 
yum -y awk          # per-line editor

# Install this script dependencies 
yum -y install wget  

# Install compilation dependencies
yum install -y gcc
yum install -y gcc-c++
yum install -y ncurses-devel
yum install -y newt-devel

yum install -y libuuid-devel
yum install -y jansson-devel
yum install -y libxml2-devel
yum install -y sqlite-devel

yum install -y kernel-devel
yum install -y automake


# Create a new working directory
mkdir $workdir 


#---------------------------------------------------------------------------------------#
# DOWNLOAD SOURCE CODE                                                                  #
#---------------------------------------------------------------------------------------#

cd $workdir

# Download asterisk source code
# - download asterisk ip pbx 
wget ${ast_url}/${ast_tarfile}
# - download dahdi
wget ${dahdi_url}/${dahdi_tarfile}
# - download libpri
wget ${libpri_url}/${libpri_tarfile}

# Untar and delete archives
tar -xzvf ${ast_tarfile}
rm -rf ${ast_tarfile} 
tar -xzvf ${dahdi_tarfile}
rm -rf ${dahdi_tarfile} 
tar -xzvf ${libpri_tarfile}
rm -rf ${libpri_tarfile} 

# Get directory name
ast_src_dir=$(ls | grep 'asterisk')
dahdi_src_dir=$(ls | grep 'dahdi')
libpri_src_dir=$(ls | grep 'libpri')

#---------------------------------------------------------------------------------------#
#  COMPILE PROCESS                                                                      #
#---------------------------------------------------------------------------------------#

# - Copy source code to /usr/src 
cp -r $ast_src_dir  /usr/src 
cp -r $dahdi_src_dir  /usr/src 
cp -r $libpri_src_dir  /usr/src 

# - Compile dahdi
#cd $dahdi_src_dir
#make all
#make install
#make config

# - Compile libpri
#cd $libpri_src_dir
# - Compile asterisk
#cd $ast_src_dir



