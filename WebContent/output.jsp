<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 実行タイミングの確認用のコンソールへの出力 --%>
<%
System.out.println("output.jspの実行");
%>

<html>
<head>
<meta charset="UTF-8">
<title>アウトプットページ</title>
</head>
<body>
<%-- sessionスコープの暗黙オブジェクトを使用して、セッション情報名inputFormで登録された値を出力 --%>
インプットページで入力された値： <%=session.getAttribute("inputForm")%>
</body>
</html>

<%-- 実行タイミングの確認用のコンソールへの出力 --%>
<%
System.out.println("output.jspの終了");
%>