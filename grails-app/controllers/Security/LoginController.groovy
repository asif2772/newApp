package Security

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
}
