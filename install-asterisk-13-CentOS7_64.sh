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

# Variables

tstamp=$(date +%Y%m%d%H%M%S)

ast_url="http://downloads.asterisk.org/pub/telephony/asterisk"
ast_tarfile="asterisk-13-current.tar.gz"
dahdi_url="http://downloads.asterisk.org/pub/telephony/dahdi-linux-complete"
dahdi_tarfile="dahdi-linux-complete-current.tar.gz"
libpri_url="http://downloads.asterisk.org/pub/telephony/libpri"
libpri_tarfile="libpri-current.tar.gz"

workdir="${tstamp}_asterisk_downloads"


#-----------------------------------------------------------------------------#
# Install dependencies                                                        #
#-----------------------------------------------------------------------------#

# Install Utilities (optional)
yum -y install vim  # advanced text-editor
yum -y sed          # stream editor 
yum -y awk          # per-line editor

# Install this script dependencies 
yum -y install wget  

# Create a new working directory
mkdir $workdir 

#-----------------------------------------------------------------------------#
# Download source code                                                        #
#-----------------------------------------------------------------------------#

cd $workdir
# Download asterisk source code
wget ${ast_url}/${ast_tarfile}
wget ${dahdi_url}/${dahdi_tarfile}
wget ${libpri_url}/${libpri_tarfile}

tar -xzvf ${ast_tarfile}
tar -xzvf ${dahdi_tarfile}
tar -xzvf ${libpri_tarfile}



