class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		"/sign"(view:"/sign")
		"/contact"(view:"/contact")
		"/thankyou"(view:"/thankyou")
		"/meetings"(view:"meetings")
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
