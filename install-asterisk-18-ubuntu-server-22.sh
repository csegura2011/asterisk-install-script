#!/bin/bash
##########################################################################################
# FILE: install-asterisk-18-ubuntu-server-22.sh                                          #
# AUTHOR: Cristian Segura                                                                #
# Creation Date: 2025/03/10 17:11                                                        #
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
# VARIABLES                                                                              #
#----------------------------------------------------------------------------------------#

TSTAMP=$(date +%Y%m%d%H%M%S)

AST_URL="http://downloads.asterisk.org/pub/telephony/asterisk"
AST_TARFILE="asterisk-13-current.tar.gz"
AST_SRC_DIR=""
AST_DEP_LIST='build-essential'
# DAHDI Downloads
DAHDI_URL="http://downloads.asterisk.org/pub/telephony/dahdi-linux-complete"
DAHDI_TARFILE="dahdi-linux-complete-current.tar.gz"
DAHDI_SRC_DIR=""
# LIBPRI Downloads
LIBPRI_URL="http://downloads.asterisk.org/pub/telephony/libpri"
LIBPRI_TARFILE="libpri-current.tar.gz"
LIBPRIN_SRC_DIR=""

WORKDIR="${tstamp}_asterisk_downloads"


