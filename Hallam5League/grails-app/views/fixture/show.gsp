
<%@ page import="league.Fixture" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fixture.label', default: 'Fixture')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-fixture" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-fixture" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list fixture">
			
				<g:if test="${fixtureInstance?.fixtureDate}">
				<li class="fieldcontain">
					<span id="fixtureDate-label" class="property-label"><g:message code="fixture.fixtureDate.label" default="Fixture Date" /></span>
					
						<span class="property-value" aria-labelledby="fixtureDate-label"><g:formatDate date="${fixtureInstance?.fixtureDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fixtureInstance?.pitchNo}">
				<li class="fieldcontain">
					<span id="pitchNo-label" class="property-label"><g:message code="fixture.pitchNo.label" default="Pitch No" /></span>
					
						<span class="property-value" aria-labelledby="pitchNo-label"><g:fieldValue bean="${fixtureInstance}" field="pitchNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fixtureInstance?.teamA}">
				<li class="fieldcontain">
					<span id="teamA-label" class="property-label"><g:message code="fixture.teamA.label" default="Team A" /></span>
					
						<span class="property-value" aria-labelledby="teamA-label"><g:link controller="team" action="show" id="${fixtureInstance?.teamA?.id}">${fixtureInstance?.teamA?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${fixtureInstance?.teamB}">
				<li class="fieldcontain">
					<span id="teamB-label" class="property-label"><g:message code="fixture.teamB.label" default="Team B" /></span>
					
						<span class="property-value" aria-labelledby="teamB-label"><g:link controller="team" action="show" id="${fixtureInstance?.teamB?.id}">${fixtureInstance?.teamB?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:fixtureInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${fixtureInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
