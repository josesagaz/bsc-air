#!/bin/bash

bundle exec jekyll build

# rsync -a _site/ guerret4@guerrerosdelalba.org:/home2/guerret4/www/bsc/

#Remote Server IP
rserver=guerret4@guerrerosdelalba.org

#Local backup location
lbackuploc=_site/

#Remote backup location
rbackuploc=/home2/guerret4/www/bsc/

#rsync command with standard port
rsync -avz -e ssh $lbackuploc $rserver:$rbackuploc
