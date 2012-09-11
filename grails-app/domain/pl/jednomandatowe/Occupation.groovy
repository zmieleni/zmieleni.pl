package pl.jednomandatowe

class Occupation {

	String name
	
    static constraints = {
		name(nullable:false)
		name(blank:false)
    }
}
