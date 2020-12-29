function checkPage() {
    const table = document.getElementById("emp-table");

    switch (table.dataset.test) {
        case "1":
            ajax('/?ajax=emp_get_test_one_data', employeeInfo)
            break;
        case "2":
            ajax('/?ajax=emp_get_test_two_data', employeeInfo);
            break;
        case "3":
            ajax('/?ajax=emp_get_test_three_data', employeeInfo);
            break;
        case "4":
            drawTableFour(false);
            break;
        case "5":
            ajax('/?ajax=emp_get_test_five_data', departmentInfo);
    }
}

function drawTable(data, info) {
    const table = document.getElementById("emp-table");

    tableHtml = `<table><tr><th>${info.title}</th></tr>`;

    data = JSON.parse(data);
    data.forEach(element => {
        tableHtml += `<tr><td>${element[info.fieldName]}</td></tr>`
    });

    tableHtml += '</table>';

    table.innerHTML = tableHtml;
}

function ajax(url, info) {
    const Http = new XMLHttpRequest();
    Http.open("GET", url);
    Http.send();
    Http.onreadystatechange = (e) => {
        if (Http.readyState === 4) {
            drawTable(Http.responseText, info);
        }
    }
}

function drawTableFour(e) {
    if (e) {
        e.preventDefault()
    }
    url = '/?ajax=emp_get_test_four_data&quantity=';
    quantity = document.getElementById("emp-limit").value;
    url += (quantity) ? quantity : 0;
    ajax(url, departmentInfo)
}


const employeeInfo = {
    title: "Имя сотрудника",
    fieldName: "name"
};
const departmentInfo = {
    title: "Название департамента",
    fieldName: "name"
};

window.onload = function () {
    checkPage()
};