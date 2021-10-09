#!/bin/bash
#rsync script

echo -e "Please enter the path of the source folder : "
read sourcefolder
echo -e "Please enter the path of the destination folder : "
read destinationfolder

echo "Do you wish to sync the $sourcefolder into the $destinationfolder?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) rsync -abh --exclude="*.bak" $sourcefolder $destinationfolder; break;;
        No ) exit;;
    esac
done

