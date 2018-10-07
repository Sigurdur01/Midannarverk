<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>{{c}}</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
	<h1>Bensínstöðvar</h1>
	<table>
		<tr>
			<th>Fyrirtæki</th>
			<th>Staður</th>
		</tr>
		<%
			cnt = 0
			for i in data["results"]:
				if i["company"] == c:
				cnt += 1
		%>
		  <tr>
		 	<td><a href="/moreinfo/{{i["key"]}}">{{i["company"]}}</a></td>
		 	<td>{{i["name"]}}</td>
		 </tr>
		<%
			end
		end
		%>
	</table>
	<h3>Fjöldi stöðva: {{cnt}}</h3>
	<footer>
		<a href="/">Heim</a>
	</footer>
</body>
</html>
