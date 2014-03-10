<%@ page import="league.League" %>



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

