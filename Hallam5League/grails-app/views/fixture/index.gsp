
<%@ page import="league.Fixture" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fixture.label', default: 'Fixture')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-fixture" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-fixture" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fixtureDate" title="${message(code: 'fixture.fixtureDate.label', default: 'Fixture Date')}" />
					
						<th><g:message code="fixture.league.label" default="League" /></th>
					
						<g:sortableColumn property="pitchNo" title="${message(code: 'fixture.pitchNo.label', default: 'Pitch No')}" />
					
						<th><g:message code="fixture.teamA.label" default="Team A" /></th>
					
						<th><g:message code="fixture.teamB.label" default="Team B" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${fixtureInstanceList}" status="i" var="fixtureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${fixtureInstance.id}">${fieldValue(bean: fixtureInstance, field: "fixtureDate")}</g:link></td>
					
						<td>${fieldValue(bean: fixtureInstance, field: "league")}</td>
					
						<td>${fieldValue(bean: fixtureInstance, field: "pitchNo")}</td>
					
						<td>${fieldValue(bean: fixtureInstance, field: "teamA")}</td>
					
						<td>${fieldValue(bean: fixtureInstance, field: "teamB")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${fixtureInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
