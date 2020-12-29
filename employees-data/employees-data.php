<?php

/**
 * @package Employees-data
 */
/*
Plugin Name: Employees Data Display
Description: Displays employees  data
Version: 1.0
Author: Dmitriy Shaydurov
Author URI: https://www.facebook.com/dmitriy.shaadow/
License: GPLv2 or later
Text Domain: employees-data
*/

// Exit if Accessed Directly
if (!defined('ABSPATH')) {
    exit;
}

define('EMPLOYEES_DATA__PLUGIN_PATH', __FILE__);
define('EMPLOYEES_DATA__PLUGIN_DIR', plugin_dir_path(__FILE__));

// Load hooks
require_once(EMPLOYEES_DATA__PLUGIN_DIR . '_inc/employees-data-hooks.php');

// Load scripts
require_once(EMPLOYEES_DATA__PLUGIN_DIR . '_inc/employees-data-scripts.php');

// Load shortcodes
require_once(EMPLOYEES_DATA__PLUGIN_DIR . '_inc/employees-data-shortcodes.php');

// Load request handlers
require_once(EMPLOYEES_DATA__PLUGIN_DIR . '_inc/employees-data-request-handlers.php');
