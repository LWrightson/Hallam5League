<html>
	<body>
	<h1>Welcome to the Fixture Generator page</h1>
	<g:form action="fixtureGenerator" method="POST">	
	<g:select name="leagueName"
          from="${league.League.list()}"
          value="${leagueName}"
          optionValue="leagueName"
          optionKey="id" /><br>
	<input type="submit"/>
	</g:form>










	</body>
</html> 
