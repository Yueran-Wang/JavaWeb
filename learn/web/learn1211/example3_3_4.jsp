<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线考试</title>
</head>
<body>
<h1>在线考试</h1>
<form action="example3_3_5.jsp" method="post">
    <p>
        <label for="studentId">考号:</label>
        <input type="text" id="studentId" name="studentId" required>
    </p>
    <h3>一、单项选择题（每题2分）</h3>
    <p>
        1. 下列选项中，哪一个是Java的集合类？<br>
        <input type="radio" name="singleChoice" value="A" required>A. String<br>
        <input type="radio" name="singleChoice" value="B">B. FileInputStream<br>
        <input type="radio" name="singleChoice" value="C">C. HashMap<br>
        <input type="radio" name="singleChoice" value="D">D. File<br>
    </p>
    <h3>判断题（每题2分）</h3>
    <p>
        2. 地球是平的。<br>
        <input type="radio" name="trueFalse" value="True" required>对&nbsp;&nbsp;
        <input type="radio" name="trueFalse" value="False">错
    </p>
    <input type="submit" value="提交答案">
    <input type="reset" value="重置答案">
</form>
</body>
</html>
