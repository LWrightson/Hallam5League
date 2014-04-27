<html>
  <head>
	<meta name="layout" content="main"/>
  </head>
	<body>
		<h2>Welcome to the Fixture page</h2>
	<a class="home" href="${createLink(uri: '/')}"> Home </a>
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
