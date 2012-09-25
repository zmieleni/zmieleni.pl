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
		"/meetings"(view:"/meetings")
		"/meeting"(controller:"/organizeMeeting/create")		
		"/regulamin"(view:"/terms")
		"/prywatnosc"(view:"/policy")
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
