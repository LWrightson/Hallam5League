<html>
	<body>
		<h1>Welcome to the Fixture page</h1>
		<table border="1" style="width:900px">
			<tr>
				<th>Date</th>
				<th>Pitch Number</th>
				<th>Home</th>
				<th>Away</th>

			</tr>
			<g:each in="${f}" var="fixture">
			<tr>
				<td>${fixture.fixtureDate}</td> 
				<td>${fixture.pitchNo}</td> 
				<td>${fixture.teamA?.teamName}</td> 
				<td>${fixture.teamB?.teamName}</td>
			</tr>
	
			</g:each>
		</table>

	</body>
</html>

