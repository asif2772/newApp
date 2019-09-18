package Security

import com.yourapp.User
import grails.plugin.springsecurity.SpringSecurityUtils

class LoginController {
    def springSecurityService

    def index() {
        if (springSecurityService.isLoggedIn()) {
            redirect uri: conf.successHandler.defaultTargetUrl
        }
        else {
            redirect action: 'auth', params: params
        }

    }
    def auth () {

    }

    protected ConfigObject getConf() {
        SpringSecurityUtils.securityConfig
    }

    def newRegister () {

        render(view: 'registrationForm')
    }

    def createUser () {
        params
        params
        if (params.email && params.password) {
            User user = new User()
            user.firstName(params.firstName)
            user.lastName(params.lastName)
            user.address(params.address)
            user.phoneNo(params.phoneNo)
            user.dateOfBirth(params.dateOfBirth)
            user.email(params.email)
            user.password(params.password)
            user.save(flash: true)
        }
    }
}
