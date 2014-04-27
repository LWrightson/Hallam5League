<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Hallam5League</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				text-align:center;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
				list-style:none;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		
		<div id="page-body" role="main">
			<h2>Welcome to Hallam5League</h2>
			

			<div id="controller-list" role="navigation">
				<h2>Creating a 5 a side league</h2>
				<ul>
                                        
					<li><g:link controller="leagueCreator"> Create the League </g:link></li>
					<li><g:link controller="TeamCreator"> Create your Teams</g:link></li>
					<li><g:link controller="fixtureGenerator"> Generate the Fixtures</g:link></li>	
					<li><g:link controller="fixtureDisplay"> Fixture Tables</g:link></li>
				</ul>

				<h2>Our Scaffolds</h2>
				<ul>
                                        
					<li><g:link controller="fixture"> Fixture Scaffold </g:link></li>
					<li><g:link controller="league"> League Scaffold</g:link></li>
					<li><g:link controller="team"> Team Scaffold</g:link></li>	
					
				</ul>
<br>
					<g:img dir="images" file="football.png" width="100" height="100"/>
			</div>
		</div>
	</body>
</html>
