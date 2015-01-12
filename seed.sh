#!/bin/bash

echo "seeding"
/usr/local/bin/add_reference.pl -i pf3D7_v2.1.5 ftp://ftp.sanger.ac.uk/pub/project/pathogens/Plasmodium/falciparum/3D7/3D7.version2.1.5/Pf3D7_v2.1.5.fasta -z
if [ $? == 0 ]
then
  echo "updating mongodb"
  /usr/local/bin/seed_reference.rb
else
  echo "there was a problem!"
fi
