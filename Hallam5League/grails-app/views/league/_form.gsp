<%@ page import="league.League" %>



<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'fixtures', 'error')} ">
	<label for="fixtures">
		<g:message code="league.fixtures.label" default="Fixtures" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${leagueInstance?.fixtures?}" var="f">
    <li><g:link controller="fixture" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="fixture" action="create" params="['league.id': leagueInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'fixture.label', default: 'Fixture')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'leagueName', 'error')} ">
	<label for="leagueName">
		<g:message code="league.leagueName.label" default="League Name" />
		
	</label>
	<g:textField name="leagueName" value="${leagueInstance?.leagueName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'leagueStartDate', 'error')} required">
	<label for="leagueStartDate">
		<g:message code="league.leagueStartDate.label" default="League Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="leagueStartDate" precision="day"  value="${leagueInstance?.leagueStartDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'lengthOfLeague', 'error')} ">
	<label for="lengthOfLeague">
		<g:message code="league.lengthOfLeague.label" default="Length Of League" />
		
	</label>
	<g:textField name="lengthOfLeague" value="${leagueInstance?.lengthOfLeague}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'noOfTeams', 'error')} ">
	<label for="noOfTeams">
		<g:message code="league.noOfTeams.label" default="No Of Teams" />
		
	</label>
	<g:textField name="noOfTeams" value="${leagueInstance?.noOfTeams}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'teams', 'error')} ">
	<label for="teams">
		<g:message code="league.teams.label" default="Teams" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${leagueInstance?.teams?}" var="t">
    <li><g:link controller="team" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="team" action="create" params="['league.id': leagueInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'team.label', default: 'Team')])}</g:link>
</li>
</ul>

</div>

