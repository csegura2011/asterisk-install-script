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

# Install Utilities (optional)
yum -y install vim  # advanced text-editor
yum -y sed          # stream editor 
yum -y awk          # per-line editor

# Install this script dependencies 
yum -y install wget  


