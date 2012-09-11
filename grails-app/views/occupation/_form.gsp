<%@ page import="pl.jednomandatowe.Occupation" %>



<div class="fieldcontain ${hasErrors(bean: occupationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="occupation.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${occupationInstance?.name}"/>
</div>

