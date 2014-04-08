<html>
	<body>
		<h1>Welcome to the Fixture page</h1>
		
		<table border="1" style="width:900px">
			<tr>

				<th>Home</th>
				<th>Away</th>

			</tr>
			<g:each in="${r}" var="team">
			<tr>
				<td>${teamA.teamName}</td>
				<td>${teamB.teamName}</td>
			</tr>
	
			</g:each>
		</table>
	</body>
</html> 
