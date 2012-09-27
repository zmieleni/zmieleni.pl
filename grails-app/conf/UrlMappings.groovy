class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		"/signaturerest"(controller: "signature") {
			action = [GET: "show"]
		}
		"/sign"(view:"/sign")
		"/signnotpopup"(view:"/signNotPopup")
		"/contact"(view:"/contact")
		"/thankyou"(view:"/thankyou")
		"/thankyounotpopup"(view:"/thankyouNotPopup")
		"/meetings"(view:"/meetings")
		"/meeting"(controller:"/organizeMeeting/create")		
		"/regulamin"(view:"/terms")
		"/prywatnosc"(view:"/policy")
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
