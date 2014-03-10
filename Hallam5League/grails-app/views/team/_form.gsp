<%@ page import="league.Team" %>



<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'teamDescription', 'error')} ">
	<label for="teamDescription">
		<g:message code="team.teamDescription.label" default="Team Description" />
		
	</label>
	<g:textField name="teamDescription" value="${teamInstance?.teamDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'teamMembers', 'error')} ">
	<label for="teamMembers">
		<g:message code="team.teamMembers.label" default="Team Members" />
		
	</label>
	<g:textField name="teamMembers" value="${teamInstance?.teamMembers}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'teamName', 'error')} ">
	<label for="teamName">
		<g:message code="team.teamName.label" default="Team Name" />
		
	</label>
	<g:textField name="teamName" value="${teamInstance?.teamName}"/>
</div>

