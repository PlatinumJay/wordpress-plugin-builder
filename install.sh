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

a0=("Enter the plugin name..."
	"Enter the plugin URI..."
	"Enter description for the plugin..." 
	"Enter author for the plugin..." 
	"Enter author URI for the plugin..." 
	"Enter dashicon for the plugin (https://developer.wordpress.org/resource/dashicons/)..." 
	"Enter security role for plugin...")

a1=(wp_name 
	wp_uri 
	wp_desc 
	wp_author 
	wp_author_uri 
	wp_dashicon 
	wp_access)

a2=("PLUGINNAME"
	"PLUGINURI"
	"DESCNAME"
	"AUTHORNAME"
	"AUTHORURI"
	"PLUGINDASHICON"
	"ACCESSNAME")

setup_vars () {
   tput setaf 6
   echo $1
   
   tput setaf 7
   read $2
}

setup_replc () {
   sed -i "s!$1!${!2}!g" $file
}

for ((i=0;i<"${#a0[@]}";i++))
do
   setup_vars "${a0[$i]}" ${a1[$i]}
done

wp_name_lower="${wp_name,,}"
wp_name_under=${wp_name_lower// /_}
wp_name_dash=${wp_name_lower// /-}

for ((i=0;i<"${#a0[@]}";i++))
do
   setup_replc "${a2[$i]}" ${a1[$i]}
done


sed -i "s!PLUGIND!$wp_name_dash!g" $file
sed -i "s!PLUGIN_NAME!$wp_name_under!g" $file

mv wordpress-plugin-template.php ${wp_name_dash}.php
zip ${wp_name_dash}.php.zip ${wp_name_dash}.php

tput setaf 5
tput bold 
echo -e "#==========================================================#"
echo -e "#                      !!!!COMPLETE!!!!                    #"
echo -e "#==========================================================#"

tput sgr0
