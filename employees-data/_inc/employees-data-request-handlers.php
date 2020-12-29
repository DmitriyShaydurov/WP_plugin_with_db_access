<?php

switch ($_REQUEST['ajax']) {
    case 'emp_get_test_one_data':
        die(emp_get_test_one_data());
        //no break
    case 'emp_get_test_two_data':
        die(emp_get_test_two_data());
         //no break
    case 'emp_get_test_three_data':
        die(emp_get_test_three_data());
         //no break
    case 'emp_get_test_four_data':
        die(emp_get_test_four_data($_REQUEST['quantity']));
         //no break
    case 'emp_get_test_five_data':
        die(emp_get_test_five_data());
}