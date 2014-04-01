<html>
	<body>
		<h1>Welcome to the League List page</h1>
		<p><a href="create.gsp">Create League</a></p>
		<table border="1" style="width:900px">
			<tr>
				<th>LeagueName</th>
				<th>League Starting Date</th>
				<th>Number of Teams</th>
				<th>Length of League</th>
			</tr>
			<g:each in="${l}" var="league">
			<tr>
				<td>${league.leagueName}</td>
				<td>${league.leagueStartDate}</td>
				<td>${league.noOfTeams}</td>
				<td>${league.lengthOfLeague}</td>
			</tr>
			</g:each>
		</table>
	</body>
</html> 
