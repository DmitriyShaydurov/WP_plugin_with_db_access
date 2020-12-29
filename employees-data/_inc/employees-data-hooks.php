<?php
// load and remove test sql example

function emp_add_tables()
{
    $sql = file_get_contents(ABSPATH . 'wp-content/plugins/employees-data/test-tables/test.sql');
    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    dbDelta($sql);
}

function emp_drop_tables()
{
    global $wpdb;
    $wpdb->query("DROP TABLE IF EXISTS `department`");
    $wpdb->query("DROP TABLE IF EXISTS `employee`");
}

register_activation_hook(EMPLOYEES_DATA__PLUGIN_PATH, 'emp_add_tables');
register_deactivation_hook(EMPLOYEES_DATA__PLUGIN_PATH, 'emp_drop_tables');
