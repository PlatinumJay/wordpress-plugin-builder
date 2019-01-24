<?php
/*
*  Plugin Name: PLUGINNAME
*  Plugin URI: PLUGINURI
*  Description: DESCNAME
*  Version: 1.0
*  Author: AUTHORNAME
*  Author URI: AUTHORURI
*  License: GPL2
*/
	
defined( 'ABSPATH' ) or die();

register_activation_hook( __FILE__, 'PLUGIN_NAME_install' );

//Database, verioning information.
global $PLUGIN_NAME_db_version;
$PLUGIN_NAME_db_version = '1.1';

function PLUGIN_NAME_install() {
	
	global $wpdb;

	$table_name = $wpdb->prefix . 'PLUGIN_NAME';
	
	$charset_collate = $wpdb->get_charset_collate();

	$sql = "CREATE TABLE " . $table_name . " (
		id int NOT NULL AUTO_INCREMENT,
		PLUGIN_NAME_time datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
		PRIMARY KEY  (id)
	) " . $charset_collate . ";";

	require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
	dbDelta( $sql );

	add_option( 'PLUGIN_NAME_db_version', $PLUGIN_NAME_db_version );
}


//Plugin shortcode template.
function PLUGIN_NAME_shortcode($atts) {
	
   $content="a shortcode";
	
   return $content;
}
add_shortcode( 'PLUGIN_NAME', 'PLUGIN_NAME_shortcode' );

//Creates an admin menu.
function PLUGIN_NAME_menu() {
	
    add_menu_page(
		'PLUGINNAME',
		'PLUGINNAME',
		'ACCESSNAME',
		'PLUGIND',
		'PLUGIN_NAME_page',
		'PLUGINDASHICON'
	);
}
add_action('admin_menu', 'PLUGIN_NAME_menu');

//The plugin admin page.
function PLUGIN_NAME_page() { ?>

    <div class="wrap">
		<div id="icon-themes" class="icon32"></div>  
        <?php settings_errors(); ?>  
				
		<div class="postbox-container">
			<div class="postbox">	
				<div class="row">
					<div class="col-lg-8">
						<div class="inside">
							<div class="main">
								<h2>PLUGINNAME</h2>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<?php }

?>
