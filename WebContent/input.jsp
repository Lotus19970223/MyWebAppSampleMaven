<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- 実行タイミングの確認用のコンソールへの出力 --%>
<%
System.out.println("input.jspの実行");
%>

<html>
<head>
<meta charset="UTF-8">
<title>インプットページ</title>
</head>
<body>
	<h2>入力フォーム</h2>
ここで入力した値が次のページで表示されます
	<%-- "MyServlet"とマッピングされたSampleSerletクラスに、post送信を行いformタグ内の値を渡す --%>
	<form action="MyServlet" method="post">
		<%-- 入力フォームに入力された値をパラメータ名inputFormの値にする  初期値としてフォームに「初期値」を表示 --%>
		<input type="text" value="初期値" name="inputForm">
		<%-- formタグ内の値の送信ボタン --%>
		<input type="submit" value="送信する">
	</form>

</body>
</html>

<%-- 実行タイミングの確認用のコンソールへの出力 --%>
<%
System.out.println("input.jspの終了");
%>