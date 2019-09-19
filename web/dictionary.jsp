<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "xin chào");
    dic.put("name","tên");
    dic.put("how","như nào");
    dic.put("computer","máy tính");
    String search = request.getParameter("word");
    String result = dic.get(search);
    if (result != null){
        out.println("Word: "+ search);
        out.println("Result: "+ result);
    }
    else {
        out.print("not found");
    }
%>
</body>
</html>
