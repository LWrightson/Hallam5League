<%@ page import="league.Fixture" %>



<div class="fieldcontain ${hasErrors(bean: fixtureInstance, field: 'fixtureDate', 'error')} required">
	<label for="fixtureDate">
		<g:message code="fixture.fixtureDate.label" default="Fixture Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fixtureDate" precision="day"  value="${fixtureInstance?.fixtureDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: fixtureInstance, field: 'league', 'error')} required">
	<label for="league">
		<g:message code="fixture.league.label" default="League" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="league" name="league.id" from="${league.League.list()}" optionKey="id" required="" value="${fixtureInstance?.league?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fixtureInstance, field: 'pitchNo', 'error')} ">
	<label for="pitchNo">
		<g:message code="fixture.pitchNo.label" default="Pitch No" />
		
	</label>
	<g:textField name="pitchNo" value="${fixtureInstance?.pitchNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fixtureInstance, field: 'teamA', 'error')} required">
	<label for="teamA">
		<g:message code="fixture.teamA.label" default="Team A" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teamA" name="teamA.id" from="${league.Team.list()}" optionKey="id" required="" value="${fixtureInstance?.teamA?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fixtureInstance, field: 'teamB', 'error')} required">
	<label for="teamB">
		<g:message code="fixture.teamB.label" default="Team B" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teamB" name="teamB.id" from="${league.Team.list()}" optionKey="id" required="" value="${fixtureInstance?.teamB?.id}" class="many-to-one"/>
</div>

