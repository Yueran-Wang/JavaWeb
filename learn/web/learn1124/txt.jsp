<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <div>
        <%
            int n=10,i;
            for(i=1;i<=n;i++){
                out.println(i+" ");
            }
        %>
    </div>
    <div>
        <%
            i=1;
            while (i<=n){
                out.println(i+" ");
                i++;
            }
        %>
    </div>
</body>
</html>
