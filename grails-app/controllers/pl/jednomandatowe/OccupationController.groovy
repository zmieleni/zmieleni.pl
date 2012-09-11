
package pl.jednomandatowe

import org.springframework.dao.DataIntegrityViolationException

class OccupationController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']

    def index() {
        redirect action: 'list', params: params
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [occupationInstanceList: Occupation.list(params), occupationInstanceTotal: Occupation.count()]
    }

    def create() {
		switch (request.method) {
		case 'GET':
        	[occupationInstance: new Occupation(params)]
			break
		case 'POST':
	        def occupationInstance = new Occupation(params)
	        if (!occupationInstance.save(flush: true)) {
	            render view: 'create', model: [occupationInstance: occupationInstance]
	            return
	        }

			flash.message = message(code: 'default.created.message', args: [message(code: 'occupation.label', default: 'Occupation'), occupationInstance.id])
	        redirect action: 'show', id: occupationInstance.id
			break
		}
    }

    def show() {
        def occupationInstance = Occupation.get(params.id)
        if (!occupationInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'occupation.label', default: 'Occupation'), params.id])
            redirect action: 'list'
            return
        }

        [occupationInstance: occupationInstance]
    }

    def edit() {
		switch (request.method) {
		case 'GET':
	        def occupationInstance = Occupation.get(params.id)
	        if (!occupationInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'occupation.label', default: 'Occupation'), params.id])
	            redirect action: 'list'
	            return
	        }

	        [occupationInstance: occupationInstance]
			break
		case 'POST':
	        def occupationInstance = Occupation.get(params.id)
	        if (!occupationInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'occupation.label', default: 'Occupation'), params.id])
	            redirect action: 'list'
	            return
	        }

	        if (params.version) {
	            def version = params.version.toLong()
	            if (occupationInstance.version > version) {
	                occupationInstance.errors.rejectValue('version', 'default.optimistic.locking.failure',
	                          [message(code: 'occupation.label', default: 'Occupation')] as Object[],
	                          "Another user has updated this Occupation while you were editing")
	                render view: 'edit', model: [occupationInstance: occupationInstance]
	                return
	            }
	        }

	        occupationInstance.properties = params

	        if (!occupationInstance.save(flush: true)) {
	            render view: 'edit', model: [occupationInstance: occupationInstance]
	            return
	        }

			flash.message = message(code: 'default.updated.message', args: [message(code: 'occupation.label', default: 'Occupation'), occupationInstance.id])
	        redirect action: 'show', id: occupationInstance.id
			break
		}
    }

    def delete() {
        def occupationInstance = Occupation.get(params.id)
        if (!occupationInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'occupation.label', default: 'Occupation'), params.id])
            redirect action: 'list'
            return
        }

        try {
            occupationInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'occupation.label', default: 'Occupation'), params.id])
            redirect action: 'list'
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'occupation.label', default: 'Occupation'), params.id])
            redirect action: 'show', id: params.id
        }
    }
}
