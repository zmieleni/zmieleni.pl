<%@ page import="pl.jednomandatowe.Signature" %>



<div class="fieldcontain ${hasErrors(bean: signatureInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="signature.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${signatureInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: signatureInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="signature.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${signatureInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: signatureInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="signature.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${signatureInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: signatureInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="signature.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${signatureInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: signatureInstance, field: 'occupation', 'error')} required">
	<label for="occupation">
		<g:message code="signature.occupation.label" default="Occupation" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="occupation" name="occupation.id" from="${pl.jednomandatowe.Occupation.list()}" optionKey="id" required="" value="${signatureInstance?.occupation?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: signatureInstance, field: 'university', 'error')} ">
	<label for="university">
		<g:message code="signature.university.label" default="University" />
		
	</label>
	<g:textField name="university" value="${signatureInstance?.university}"/>
</div>

