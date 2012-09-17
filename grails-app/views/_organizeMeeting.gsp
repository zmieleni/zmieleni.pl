<r:script>
$("#allow").attr("required", "true");
</r:script>

<div class="modal hide fade" id="myModal"
	style="width: 800px; top: 30%; height: 80%">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">×</button>
		<h3 id="myModalLabel">
			<g:message code="organize.meeting" default="Chcę zorganizować spotkanie!" />
		</h3>
	</div>
	<div class="modal-body" style="max-height: 800px; height: 85%">

		<g:hasErrors bean="${organizeMeetingInstance}">

			<bootstrap:alert class="alert-error">
				<ul>
					<g:eachError bean="${organizeMeetingInstance}" var="error">
						<li
							<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
								error="${error}" /></li>
					</g:eachError>
				</ul>
			</bootstrap:alert>
		</g:hasErrors>

		<fieldset>
			<g:form class="form-horizontal" action="create"
				controller="organizeMeeting" style="height:85%">
				<fieldset>
					<f:field bean="organizeMeetingInstance" property="name" label ="Imię"/>
					<f:field bean="organizeMeetingInstance" property="lastName" label = "Nazwisko"/>
					<f:field bean="organizeMeetingInstance" property="email" />
					<f:field bean="organizeMeetingInstance" property="city"
						label="Miejscowość" />
					<f:field bean="organizeMeetingInstance" property="cellPhone" label="Telefon"/>
					<div class="control-group ">
						<label class="control-label"> <g:message
									code="default.selfDescription.label" />
							</label>
						
						<div class="controls">
							<g:textArea name="selfDescription"
								value="${organizeMeetingInstance.selfDescription}" rows="5"
								cols="40" style="width: 406px;" />
						</div>
					</div>					
					<div class="control-group ">
						<label class="control-label"> <g:message
									code="metting.adress.label" />
							</label>
						<div class="controls">
							
							<g:textArea name="adress"
								value="${organizeMeetingInstance.adress}" rows="5" cols="80"
								style="width: 406px;" />
						</div>
					</div>
					
					<div class="control-group ">
							<label class="control-label"> <g:message
									code="default.shortDescriptionOfPlace.label" />
							</label>
						
						<div class="controls">
							<g:textArea name="shortDescriptionOfPlace"
								value="${organizeMeetingInstance.shortDescriptionOfPlace}"
								rows="5" cols="40" style="width: 406px;" />
						</div>
					</div>

					<f:field bean="organizeMeetingInstance" property="date" label="Proponowana data i godzina"/>
					

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
						<p style="font-size: 10px">Wyrażam zgodę na otrzymywanie
							informacji dotyczących jednomandatowych okręgów wyborczych drogą
							elektroniczną (zgodnie z Ustawą z dnia 18 lipca 2002 r. o
							świadczeniu usług drogą elektroniczną, Dz.U. nr 144, poz. 1204.</p>
					</div>

					<div class="modal-footer" style="margin: 10px">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Zamknij</button>
						<button type="submit" class="btn btn-primary">
							<i class="icon-ok icon-white"></i>
							<g:message code="default.send.label" default="Send" />
						</button>
					</div>
				</fieldset>

			</g:form>
		</fieldset>

	</div>

</div>

