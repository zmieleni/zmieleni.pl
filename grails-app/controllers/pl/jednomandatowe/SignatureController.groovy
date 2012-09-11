package pl.jednomandatowe

import org.springframework.dao.DataIntegrityViolationException

class SignatureController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']
	def simpleCaptchaService
	
    def thankyou() {
        redirect action: 'list', params: params
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [signatureInstanceList: Signature.list(params), signatureInstanceTotal: Signature.count()]
    }

    def create() {
		switch (request.method) {
		case 'GET':        	
			render(view: "/index", model: ['signatureInstance': new Signature(params)])
			break
		case 'POST':
	
			boolean captchaValid = simpleCaptchaService.validateCaptcha(params.captcha)			
			def signatureInstance = new Signature(params)
			if (captchaValid) {
				signatureInstance.allow = (params.allow == 'on')
				if (!signatureInstance.save(flush: true)) {	            
				render(view: "/sign",model:['signatureInstance':signatureInstance])
	            return
	        }
			//flash.message = message(code: 'default.created.message', args: [message(code: 'signature.label', default: 'Signature'), signatureInstance.id])
	        redirect(uri: "/thankyou")
			break
	        } else {
			flash.message = message(code: 'wrong.captcha')
			
				render(view: "/sign",model:['signatureInstance':signatureInstance])
			}
		}
    }

    def show() {
        def signatureInstance = Signature.get(params.id)
        if (!signatureInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'signature.label', default: 'Signature'), params.id])
            redirect action: 'list'
            return
        }

        [signatureInstance: signatureInstance]
    }

//    def edit() {
//		switch (request.method) {
//		case 'GET':
//	        def signatureInstance = Signature.get(params.id)
//	        if (!signatureInstance) {
//	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'signature.label', default: 'Signature'), params.id])
//	            redirect action: 'list'
//	            return
//	        }
//
//	        [signatureInstance: signatureInstance]
//			break
//		case 'POST':
//	        def signatureInstance = Signature.get(params.id)
//	        if (!signatureInstance) {
//	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'signature.label', default: 'Signature'), params.id])
//	            redirect action: 'list'
//	            return
//	        }
//
//	        if (params.version) {
//	            def version = params.version.toLong()
//	            if (signatureInstance.version > version) {
//	                signatureInstance.errors.rejectValue('version', 'default.optimistic.locking.failure',
//	                          [message(code: 'signature.label', default: 'Signature')] as Object[],
//	                          "Another user has updated this Signature while you were editing")
//	                render view: 'edit', model: [signatureInstance: signatureInstance]
//	                return
//	            }
//	        }
//
//	        signatureInstance.properties = params
//
//	        if (!signatureInstance.save(flush: true)) {
//	            render view: 'edit', model: [signatureInstance: signatureInstance]
//	            return
//	        }
//
//			flash.message = message(code: 'default.updated.message', args: [message(code: 'signature.label', default: 'Signature'), signatureInstance.id])
//	        redirect action: 'show', id: signatureInstance.id
//			break
//		}
//    }
//
//    def delete() {
//        def signatureInstance = Signature.get(params.id)
//        if (!signatureInstance) {
//			flash.message = message(code: 'default.not.found.message', args: [message(code: 'signature.label', default: 'Signature'), params.id])
//            redirect action: 'list'
//            return
//        }
//
//        try {
//            signatureInstance.delete(flush: true)
//			flash.message = message(code: 'default.deleted.message', args: [message(code: 'signature.label', default: 'Signature'), params.id])
//            redirect action: 'list'
//        }
//        catch (DataIntegrityViolationException e) {
//			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'signature.label', default: 'Signature'), params.id])
//            redirect action: 'show', id: params.id
//        }
//    }
}
