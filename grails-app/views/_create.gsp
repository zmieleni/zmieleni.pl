<%@ page import="pl.jednomandatowe.Signature"%>
<g:if test="${signatureInstance==null}">>
<g:set var="signatureInstance"
		value="${new pl.jednomandatowe.Signature() }">
	</g:set>
</g:if>
<r:script>
$("#allow").attr("required", "true");
</r:script>
<div class="modal hide fade" id="myModal">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">×</button>
		<h3 id="myModalLabel">
			<g:message code="support.our.action" default="Support our action!" />
		</h3>
	</div>
	<div class="modal-body">

		<g:hasErrors bean="${signatureInstance}">

			<bootstrap:alert class="alert-error">
				<ul>
					<g:eachError bean="${signatureInstance}" var="error">
						<li
							<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
								error="${error}" /></li>
					</g:eachError>
				</ul>
			</bootstrap:alert>
		</g:hasErrors>

		<fieldset>
			<g:form class="form-horizontal" action="create"
				controller="signature">
				<fieldset>
<%--					<f:all bean="signatureInstance" />--%>
					<f:field bean="signatureInstance" property="firstName"/>
					<f:field bean="signatureInstance" property="lastName"/>
					<f:field bean="signatureInstance" property="email"/>
					<f:field bean="signatureInstance" property="city" label="Miejscowość"/>
					
					
					<div class="control-group ">
						<div class="controls">
							<img
								src="${createLink(controller: 'simpleCaptcha', action: 'captcha')}" />
						</div>
					</div>
					<div class="controls">
						<label for="captcha"><g:message code="capcha.message"
								default="Wpisz litery z ramki"></g:message></label>
					</div>
								
					<div class="controls">
						<g:if test="${flash.message}">
							<bootstrap:alert class="alert-info">
								${flash.message}
							</bootstrap:alert>
						</g:if>
						<g:textField name="captcha" />
					</div>
					<div class="controls">
					<g:checkBox name="allow" checked="false" />
					</div>
					<div class="controls">
					<p style="font-size:10px">Wyrażam zgodę na otrzymywanie informacji dotyczących jednomandatowych okręgów wyborczych drogą elektroniczną (zgodnie z Ustawą z dnia 18 lipca 2002 r. o świadczeniu usług drogą elektroniczną, Dz.U. nr 144, poz. 1204.
					</p>
					</div>		
					
					<div class="modal-footer" style="margin: 10px">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Zamknij</button>
						<button type="submit" class="btn btn-primary">
							<i class="icon-ok icon-white"></i>
							<g:message code="default.button.create.label" default="Popieram" />
						</button>
					</div>
				</fieldset>

			</g:form>
		</fieldset>

	</div>

</div>

