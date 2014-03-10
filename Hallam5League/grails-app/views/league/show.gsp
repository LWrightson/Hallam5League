
<%@ page import="league.League" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'league.label', default: 'League')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-league" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-league" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list league">
			
				<g:if test="${leagueInstance?.leagueName}">
				<li class="fieldcontain">
					<span id="leagueName-label" class="property-label"><g:message code="league.leagueName.label" default="League Name" /></span>
					
						<span class="property-value" aria-labelledby="leagueName-label"><g:fieldValue bean="${leagueInstance}" field="leagueName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.leagueStartDate}">
				<li class="fieldcontain">
					<span id="leagueStartDate-label" class="property-label"><g:message code="league.leagueStartDate.label" default="League Start Date" /></span>
					
						<span class="property-value" aria-labelledby="leagueStartDate-label"><g:formatDate date="${leagueInstance?.leagueStartDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.lengthOfLeague}">
				<li class="fieldcontain">
					<span id="lengthOfLeague-label" class="property-label"><g:message code="league.lengthOfLeague.label" default="Length Of League" /></span>
					
						<span class="property-value" aria-labelledby="lengthOfLeague-label"><g:fieldValue bean="${leagueInstance}" field="lengthOfLeague"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.noOfTeams}">
				<li class="fieldcontain">
					<span id="noOfTeams-label" class="property-label"><g:message code="league.noOfTeams.label" default="No Of Teams" /></span>
					
						<span class="property-value" aria-labelledby="noOfTeams-label"><g:fieldValue bean="${leagueInstance}" field="noOfTeams"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:leagueInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${leagueInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
