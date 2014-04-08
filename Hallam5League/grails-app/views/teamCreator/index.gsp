<html>
	<body>
		<h1>Welcome to the Team List page</h1>
		<p><g:link controller="teamCreator" action="create" >Create Team</g:link></p>
		<table border="1" style="width:900px">
			<tr>
				<th>Team Name</th>
				<th>Team Description</th>
				<th>Team Members</th>
				<th>League Name</th>
				
			</tr>
			<g:each in="${l}" var="team">
			<tr>
				<td>${team.teamName}</td>
				<td>${team.teamDescription}</td>
				<td>${team.teamMembers}</td>
				<td>${team.league?.leagueName}</td>
			</tr>
			</g:each>

		</table>



	</body>
</html> 
