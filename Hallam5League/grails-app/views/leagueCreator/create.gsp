<html>
	<head>
		<meta name="layout" content="main"/>
 	</head>
 	<body>
  		<h2>Hello and welcome to the Create League Page</h2>
		<a class="home" href="${createLink(uri: '/')}"> Home </a>
  		<div><a href="index.gsp">League Index</a></div>
  		<g:form action="create">
			<label>League Name</label><input name="leagueName" type="text"/><br>
			<label>League Date</label><input name="startDate" type="date"/><br>
        		<label>Number of Teams in League</label><input name="noOfTeams" type="text"/><br>
        		<label>League Length</label><input name="lengthOfLeague" type="text"/><br>
			<input type="submit"/>
  		</g:form>
 	</body>
</html>
