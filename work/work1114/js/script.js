/* script.js */
/* 校验 */
    function validatePassword() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirm-password").value;

    if (password != confirmPassword) {
    alert("密码和确认密码不匹配！");
    return false; // 阻止表单提交
}
    if (!document.getElementById('terms').checked) {
    alert('您必须同意服务条款和隐私政策才能提交表单。');
    return false; // 阻止表单提交
}

    return true; // 允许表单提交
}

/* 日期三级联动 */
    var yearSelect = document.getElementById('yearSelect');
    var monthSelect = document.getElementById('monthSelect');
    var daySelect = document.getElementById('daySelect');

    function populateYearSelect() {
    var currentYear = new Date().getFullYear();
    yearSelect.innerHTML = '';
    yearSelect.add(new Option('年', '')); // 添加年份占位符

    for (var i = currentYear; i >= 1950; i--) {
    yearSelect.add(new Option(i.toString(), i));
}

    yearSelect.value = '';
}

    function populateMonthSelect() {
    monthSelect.innerHTML = '';
    monthSelect.add(new Option('月', '')); // 添加月份占位符

    for (var i = 1; i <= 12; i++) {
    monthSelect.add(new Option(i.toString(), i));
}

    monthSelect.value = '';
}

    function updateDaySelect() {
    var year = yearSelect.value;
    var month = monthSelect.value;
    var daysInMonth = new Date(year, month, 0).getDate();

    daySelect.innerHTML = '';
    daySelect.add(new Option('日', ''));

    for (var i = 1; i <= daysInMonth; i++) {
    daySelect.add(new Option(i.toString(), i));
}

    daySelect.value = '';
}

    yearSelect.onchange = function() {
    updateDaySelect();
}

    monthSelect.onchange = function() {
    updateDaySelect();
}

    populateYearSelect();
    populateMonthSelect();
    updateDaySelect();

/* 日期三级联动 */
    function changeCountry() {
    var countrySelect = document.getElementById("country");
    var provinceSelect = document.getElementById("province");
    var citySelect = document.getElementById("city");
    var selectedCountry = countrySelect.value;

    provinceSelect.innerHTML = '<option value="">选择省份</option>';
    citySelect.innerHTML = '<option value="">选择城市</option>';

    if (selectedCountry != "") {
    for (var province in data[selectedCountry]) {
    provinceSelect.innerHTML += '<option value="' + province + '">' + province + '</option>';
}
}
}

    function changeProvince() {
    var countrySelect = document.getElementById("country");
    var provinceSelect = document.getElementById("province");
    var citySelect = document.getElementById("city");
    var selectedCountry = countrySelect.value;
    var selectedProvince = provinceSelect.value;

    citySelect.innerHTML = '<option value="">选择城市</option>';

    if (selectedProvince != "") {
    var cities = data[selectedCountry][selectedProvince];
    for (var i = 0; i < cities.length; i++) {
    citySelect.innerHTML += '<option value="' + cities[i] + '">' + cities[i] + '</option>';
}
}
}

    // 初始化国家下拉菜单
    window.onload = function() {
    var countrySelect = document.getElementById("country");
    for (var country in data) {
    countrySelect.innerHTML += '<option value="' + country + '">' + country + '</option>';
}
};

document.addEventListener('DOMContentLoaded', function () {
    var inputs = document.querySelectorAll('.input-control');
    inputs.forEach(function(input) {
        var hint = input.nextElementSibling; // 假设提示文本紧跟在输入框后面

        // 默认隐藏提示
        hint.style.visibility = 'hidden';

        // 当输入框获得焦点时显示提示
        input.addEventListener('focus', function() {
            hint.style.visibility = 'visible';
        });

        // 当输入框失去焦点时隐藏提示
        input.addEventListener('blur', function() {
            hint.style.visibility = 'hidden';
        });
    });
});
