<?php

// Test one
function emp_test_one()
{
    return '<h3>1. Список работников, чья зарплата больше, чем у их непосредственного начальника.</h3>' . emp_get_div(1);
}

function emp_get_test_one_data()
{
    return emp_get_query("SELECT employees.name FROM employee AS employees, employee AS bosses WHERE bosses.id = employees.boss_id AND employees.salary > bosses.salary;");
}

// Test two
function emp_test_two()
{
    return '<h3>2. Список работников, чья зарплата самая большая в своём отделе.</h3>' . emp_get_div(2);
}

function emp_get_test_two_data()
{
    return emp_get_query("select a.* from employee a where  a.salary = ( select max(salary) from employee b where b.department = a.department)"); 
}

// Test three
function emp_test_three()
{
    return '<h3>3. Список работников, чья зарплата самая большая в своём отделе (исключить руководителей).</h3>' . emp_get_div(3);
}

function emp_get_test_three_data()
{
    return emp_get_query("SELECT t1.* FROM employee t1 INNER JOIN ( SELECT department, MAX(salary) AS max_salary FROM employee WHERE id IN (SELECT id FROM employee WHERE id NOT IN (SELECT DISTINCT boss_id FROM employee WHERE  boss_id IS NOT NULL)) GROUP BY department) t2 ON t1.`department` = t2.`department` AND t1.salary = t2.max_salary"); 
}

// Test four
function emp_get_test_four_data($quantity)
{
    global $wpdb;
    $query = $wpdb->prepare("SELECT department.name, COUNT(department) cd FROM employee LEFT JOIN department ON department = department.id GROUP BY department HAVING COUNT(department) > %d", $quantity ? $quantity : 0);
    return emp_get_query($query);
}

function emp_test_four()
{
    return
    '<h3>4. Список отделов, где работает меньше, чем заданное число сотрудников. </h3>
    <form action="?" method="post">
  	<input id="emp-limit" type="number" name="limit" placeholder="число сотрудников">
    <br/>
    <input class ="emp-button" type="submit" value="Отправить" onclick="drawTableFour(event)">
    </form>' . emp_get_div(4); 
}

// Test five
function emp_test_five()
{
    return '<h3>5. Список отделов с максимальным расходом на зарплату. (расходы у всех этих отделов на зарплату одинаковые и равны максимальному значению)</h3>' . emp_get_div(5);
}

function emp_get_test_five_data()
{
    return emp_get_query("SELECT department.name, SUM(salary) AS ss FROM employee LEFT JOIN department ON department = department.id GROUP BY department HAVING ss = ( SELECT SUM(salary) AS ss FROM employee GROUP BY department ORDER BY ss DESC LIMIT 1)"); 
}

// Helper functions
function emp_get_div($testNumber)
{
    return "<div id ='emp-table' data-test='{$testNumber}'></div>";
}

function emp_get_query($query)
{
    global $wpdb;
    return json_encode ($wpdb->get_results($query));
}

add_shortcode('test_one', 'emp_test_one');
add_shortcode('test_two', 'emp_test_two');
add_shortcode('test_three', 'emp_test_three');
add_shortcode('test_four', 'emp_test_four');
add_shortcode('test_five', 'emp_test_five');


