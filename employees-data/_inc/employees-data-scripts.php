<?php

function emp_add_scripts_and_styles()
{
    wp_enqueue_style('emp-main-style', plugins_url() . '/employees-data/css/style.css');
    wp_enqueue_script('emp-main-scripts', plugins_url() . '/employees-data/js/main.js');
}

add_action('wp_enqueue_scripts', 'emp_add_scripts_and_styles');
