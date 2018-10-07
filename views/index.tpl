<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Bennsínstöðvar</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
	<h1>Söluaðlar eldsneytis á íslandi</h1>

	<div class="wrapper">
		<%

		    minpriceP = 5000.0
		    minpriceD = 5000.0

			le = len(data["results"])
            c = 0
			for i in range(le - 1):
			    c=i
			    if minpriceP > data["results"][i]["bensin95"]:
			        minpriceP = data["results"][i]["bensin95"]
			        companyP = data["results"][i]["company"]
			    end
			    if minpriceP > data["results"][i]["diesel"]:
			        minpriceP = data["results"][i]["diesel"]
			        companyP = data["results"][i]["company"]
			    end

			if (data["results"][i]["company"] !=data["results"][i-1]["company"]):
		%>
			<dir class="box"><a href="/company/{{data['results'][i]['company']}}">{{data['results'][i]['company']}}</a></dir>
		<%
		    end
		end
		%>
	</div>
	    <div>
	        <h3>Besta Verðið</h3>
	        <h4>Bensín 95 oktan: <i>{{[minpriceP]}} er hja {{[companyP]}}</h4>

</body>
</html>
