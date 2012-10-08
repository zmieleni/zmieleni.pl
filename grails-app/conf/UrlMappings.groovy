class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		"/signaturelist"(controller: "signature") {
			action = [GET: "show"]
		}
		"/signaturecount"(controller: "signature") {
			action = [GET: "count"]
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
