package pl.jednomandatowe

class Signature {
	
	String firstName
	String lastName
	String city
	String email
	Date dateCreated
	boolean allow
	
	def beforeInsert() {
		dateCreated = new Date()
	}
	
    static constraints = {
		firstName(blank:false)
		lastName(blank:false)
		email(	)
		email(blank:false)
		email(nullable:false)
		allow validator: {
			if (!it) return ['must.be.checked']
		}
	}
	
}
