
<%@ page import="pl.jednomandatowe.Signature" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'signature.label', default: 'Signature')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li class="active">
							<g:link class="list" action="list">
								<i class="icon-list icon-white"></i>
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
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<table class="table table-striped">
					<thead>
						<tr>
						
							<g:sortableColumn property="firstName" title="${message(code: 'signature.firstName.label', default: 'First Name')}" />
						
							<g:sortableColumn property="lastName" title="${message(code: 'signature.lastName.label', default: 'Last Name')}" />
						
							<g:sortableColumn property="email" title="${message(code: 'signature.email.label', default: 'Email')}" />
						
							<g:sortableColumn property="city" title="${message(code: 'signature.city.label', default: 'City')}" />
						
							<th class="header"><g:message code="signature.occupation.label" default="Occupation" /></th>
						
							<g:sortableColumn property="university" title="${message(code: 'signature.university.label', default: 'University')}" />
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${signatureInstanceList}" var="signatureInstance">
						<tr>
						
							<td>${fieldValue(bean: signatureInstance, field: "firstName")}</td>
						
							<td>${fieldValue(bean: signatureInstance, field: "lastName")}</td>
						
							<td>${fieldValue(bean: signatureInstance, field: "email")}</td>
						
							<td>${fieldValue(bean: signatureInstance, field: "city")}</td>
						
							<td>${fieldValue(bean: signatureInstance, field: "occupation")}</td>
						
							<td>${fieldValue(bean: signatureInstance, field: "university")}</td>
						
							<td class="link">
								<g:link action="show" id="${signatureInstance.id}" class="btn btn-small">Show &raquo;</g:link>
							</td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<bootstrap:paginate total="${signatureInstanceTotal}" />
				</div>
			</div>

		</div>
	</body>
</html>
