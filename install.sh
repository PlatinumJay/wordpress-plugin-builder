#!/bin/bash
#====================================================================================================================#
#                                Bash script to setup WordPress Plugin Template.	                                     #
#====================================================================================================================#

file="wordpress-plugin-template.php"

tput setaf 5
tput bold 
echo -e "#==========================================================#"
echo -e "#         Initial Setup: This will be used to              #"
echo -e "#                determine how to setup                    #"
echo -e "#                 the plugin Template.                     #"
echo -e "#==========================================================#"
tput setaf 6

echo "Enter the plugin name..."

tput setaf 7
read wp_name

wp_name_lower="${wp_name,,}"

wp_name_under=${wp_name_lower// /_}
wp_name_dash=${wp_name_lower// /-}

tput setaf 6
echo "Enter the plugin URI..."

tput setaf 7
read wp_uri

tput setaf 6
echo "Enter description for the plugin..."

tput setaf 7
read wp_desc

tput setaf 6
echo "Enter author for the plugin..."

tput setaf 7
read wp_author

tput setaf 6
echo "Enter author URI for the plugin..."

tput setaf 7
read wp_author_uri

tput setaf 6
echo "Enter dashicon for the plugin..."

tput setaf 7
read wp_dashicon

tput setaf 6
echo "Enter security role for plugin..."

tput setaf 7
read wp_access

sed -i "s/PLUGINDASHICON/$wp_dashicon/g" $file
sed -i "s/PLUGINNAME/$wp_name/g" $file
sed -i "s/PLUGINURI/$wp_uri/g" $file
sed -i "s/DESCNAME/$wp_desc/g" $file
sed -i "s/PLUGIND/$wp_name_dash/g" $file
sed -i "s/PLUGIN_NAME/$wp_name_under/g" $file
sed -i "s/AUTHORNAME/$wp_author/g" $file
sed -i "s/AUTHORURI/$wp_author_uri/g" $file
sed -i "s/ACCESSNAME/$wp_access/g" $file


tput setaf 5
tput bold 
echo -e "#==========================================================#"
echo -e "#                      !!!!COMPLETE!!!!                    #"
echo -e "#==========================================================#"

tput sgr0
