package pl.jednomandatowe

import org.springframework.dao.DataIntegrityViolationException

class OrganizeMeetingController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']
	def simpleCaptchaService
	
//    def thankyou() {
//        redirect action: 'list', params: params
//    }


    def create() {
		switch (request.method) {
		case 'GET':        	
			render(view: "/organizeMeeting", model: ['organizeMeetingInstance': new OrganizeMeetingCommand()])
			break
		case 'POST':	
			boolean captchaValid = simpleCaptchaService.validateCaptcha(params.captcha)			
			def organizeMeetingInstance = new OrganizeMeetingCommand(params)
			if (captchaValid) {
//				organizeMeetingInstance.allow = (params.allow == 'on')
//				if (!organizeMeetingInstance.allow) {	            
//					render(view: "/organizeMeeting",model:['organizeMeetingInstance':organizeMeetingInstance])
//					return
//				}
			def mailId = sesMail {				
					to "info@zmieleni.pl"
					subject "SPOTKANIE ${organizeMeetingInstance.city} "
					body """\
Organizator: 
${organizeMeetingInstance.name} ${organizeMeetingInstance.lastName}
${organizeMeetingInstance.email}
${organizeMeetingInstance.cellPhone}
${organizeMeetingInstance.selfDescription}	

Miejsce: 
${organizeMeetingInstance.city}
${organizeMeetingInstance.adress}
${organizeMeetingInstance.shortDescriptionOfPlace}

Termin: ${organizeMeetingInstance.date}
"""
			}
			println "mailId  ${mailId}"
	        redirect(uri: "/thankyou")
			break
	        } else {
			flash.message = message(code: 'wrong.captcha')
			
				render(view: "/organizeMeeting",model:['organizeMeetingInstance':organizeMeetingInstance])
			}
		}
  }
}
