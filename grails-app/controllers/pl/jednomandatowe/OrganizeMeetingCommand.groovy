package pl.jednomandatowe

@grails.validation.Validateable
class OrganizeMeetingCommand {
	String name
	String lastName
	String email
	String city
	String cellPhone
	String selfDescription
	String adress
	String shortDescriptionOfPlace
	String date
	boolean allow
	boolean _allow
	String captcha
	String action
	String controller	

	static constraints = {
		name blank: false
		lastName blank: false
		city blank: false
		email email: true, blank: false
	}
}
