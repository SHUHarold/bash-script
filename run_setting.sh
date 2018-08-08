#!/bin/bash
set -e
# install some packages
if [[ "$(which unzip)" == '' ]]; then
   echo "Install Unzip..."
   apt-get install unzip
fi


# create .vimrc
if [ ! -f ~/.vimrc ];then
   echo "Create .vimrc"
   touch ~/.vimrc
   echo -e ":set nu\nsyntax on\nset tabstop=4\nautocmd InsertLeave * se nocul\nautocmd InsertEnter * se cul\nset expandtab" > ~/.vimrc
fi

# add the path of anaconda
CONDA_PATH='/workspace/mnt/group/video/chenshuaijun/pkg/anaconda3/bin'
echo "PATH='${CONDA_PATH}:\$PATH'" >> ~/.bashrc
 



