
<%@ page import="pl.jednomandatowe.Signature" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'signature.label', default: 'Signature')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li>
							<g:link class="list" action="list">
								<i class="icon-list"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>
						</li>
						<li>
							<g:link class="create" action="create">
								<i class="icon-plus"></i>
								<g:message code="default.create.label" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="span9">

				<div class="page-header">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<dl>
				
					<g:if test="${signatureInstance?.firstName}">
						<dt><g:message code="signature.firstName.label" default="First Name" /></dt>
						
							<dd><g:fieldValue bean="${signatureInstance}" field="firstName"/></dd>
						
					</g:if>
				
					<g:if test="${signatureInstance?.lastName}">
						<dt><g:message code="signature.lastName.label" default="Last Name" /></dt>
						
							<dd><g:fieldValue bean="${signatureInstance}" field="lastName"/></dd>
						
					</g:if>
				
					<g:if test="${signatureInstance?.email}">
						<dt><g:message code="signature.email.label" default="Email" /></dt>
						
							<dd><g:fieldValue bean="${signatureInstance}" field="email"/></dd>
						
					</g:if>
				
					<g:if test="${signatureInstance?.city}">
						<dt><g:message code="signature.city.label" default="City" /></dt>
						
							<dd><g:fieldValue bean="${signatureInstance}" field="city"/></dd>
						
					</g:if>
				
					<g:if test="${signatureInstance?.occupation}">
						<dt><g:message code="signature.occupation.label" default="Occupation" /></dt>
						
							<dd><g:link controller="occupation" action="show" id="${signatureInstance?.occupation?.id}">${signatureInstance?.occupation?.encodeAsHTML()}</g:link></dd>
						
					</g:if>
				
					<g:if test="${signatureInstance?.university}">
						<dt><g:message code="signature.university.label" default="University" /></dt>
						
							<dd><g:fieldValue bean="${signatureInstance}" field="university"/></dd>
						
					</g:if>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${signatureInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${signatureInstance?.id}">
							<i class="icon-pencil"></i>
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
						<button class="btn btn-danger" type="submit" name="_action_delete">
							<i class="icon-trash icon-white"></i>
							<g:message code="default.button.delete.label" default="Delete" />
						</button>
					</div>
				</g:form>

			</div>

		</div>
	</body>
</html>
