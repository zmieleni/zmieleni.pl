
<%@ page import="pl.jednomandatowe.Signature" %>

				<table class="table table-striped table-bordered">
					  <caption></caption>
					<thead>
						<tr>																		
							<th class="header"><g:message code="signature.name.label" default="Imię i Nazwisko" /></th>
							<th class="header"><g:message code="signature.city.label" default="Miejscowość" /></th>

						</tr>
					</thead>
					<tbody>
					<g:each in="${Signature.list(max : 10, sort:"dateCreated", order:"desc")}" var="signatureInstance">
						<tr>						
							<td>${fieldValue(bean: signatureInstance, field: "firstName")} ${fieldValue(bean: signatureInstance, field: "lastName")}</td>
																	
							<td>${fieldValue(bean: signatureInstance, field: "city")}</td>						
						
						</tr>
					</g:each>
					</tbody>
				</table>			

