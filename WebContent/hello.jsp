<%-- JSPのサンプルファイル（JSPのコメントアウト） --%>
<%-- 以下サイトのサンプルを使用 --%>
<%-- https://www.javadrive.jp/servlet/jsp/index2.html --%>

<%-- pageディレクティブ --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- pageディレクティブのimport属性でインポート --%>
<%@ page import="java.util.*,java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello world Title</title>
</head>
<body>
<h1>Hello World!</h1>

<%-- Javaのコードを使用して動的にページの内容を変えている（現在日時の出力） --%>
<%-- スクリプトレット内にコードを記述 複数行でも「<%」から「%>」の中に記述可能 --%>
<%
out.println(new java.util.Date());
%>

<!-- 改行（HTMLでのコメントアウト） -->
<br>

<%-- インポートしているので以下も可 --%>
<%-- outは暗黙オブジェクト --%>
<%
out.println(new Date());
%>
<%-- セッション情報に登録していた値を取得する際も暗黙オブジェクトを使う --%>
<%-- request.getAttribute("取得したいセッション情報名") --%>

</body>
</html>