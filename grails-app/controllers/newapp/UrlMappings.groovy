package newapp

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "login" , view: "auth")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
