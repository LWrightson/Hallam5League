<html>
	<body>
		<h1>Welcome to the Fixture page</h1>
	<g:form action="fixtureDisplay" method="POST">	
	<g:select name="leagueName"
          from="${league.League.list()}"
          value="${leagueName}"
          optionValue="leagueName"
          optionKey="id" /><br>
	<input type="submit"/>
	</g:form>










	</body>
</html> 
