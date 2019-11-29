# wordpress-plugin-builder
Plugin template builder for WordPress

Basic function is done.

## Usage

```git clone https://github.com/PlatinumJay/wordpress-plugin-builder.git```

```cd wordpress-plugin-builder/```

```chmod +x install.sh```

```./install.sh```

Enter in parameters:

![Install](/screenshots/install-screenshot.png)


On the WordPress admin Dashboard go to Plugins->Add New.
Upload the zip file.
![Upload](/screenshots/upload-plugin-screenshot.png)

Activate plugin.
![Activate](/screenshots/list-plugin-screenshot.png)


## Warning
Does not validate input.


## TODO
- Need to add error checking in install.sh.
- Need to check restraints in WP plugins (ie. max length, allowed characters).
- May add table setup.
