<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Verð</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
	<h1>Nánari upplýsingar</h1>
	<%
		for i in data["results"]:
			if i["key"] == k:
	%>
	    <h3>Söluaðili: {{i['company']}}</h3>
	    <h3>Staður: {{i['name']}}</h3>
	    <h3>Bensín 95: {{i['bensin95']}}</h3>
	    <h3>Dísel: {{i['diesel']}}</h3>
	<%
		end
	end
	%>
	<footer>
		<a href="/">Heim</a>
	</footer>

</body>
</html>
