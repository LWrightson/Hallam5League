package league



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LeagueController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond League.list(params), model:[leagueInstanceCount: League.count()]
    }

    def show(League leagueInstance) {
        respond leagueInstance
    }

    def create() {
        respond new League(params)
    }

    @Transactional
    def save(League leagueInstance) {
        if (leagueInstance == null) {
            notFound()
            return
        }

        if (leagueInstance.hasErrors()) {
            respond leagueInstance.errors, view:'create'
            return
        }

        leagueInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'leagueInstance.label', default: 'League'), leagueInstance.id])
                redirect leagueInstance
            }
            '*' { respond leagueInstance, [status: CREATED] }
        }
    }

    def edit(League leagueInstance) {
        respond leagueInstance
    }

    @Transactional
    def update(League leagueInstance) {
        if (leagueInstance == null) {
            notFound()
            return
        }

        if (leagueInstance.hasErrors()) {
            respond leagueInstance.errors, view:'edit'
            return
        }

        leagueInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'League.label', default: 'League'), leagueInstance.id])
                redirect leagueInstance
            }
            '*'{ respond leagueInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(League leagueInstance) {

        if (leagueInstance == null) {
            notFound()
            return
        }

        leagueInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'League.label', default: 'League'), leagueInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'leagueInstance.label', default: 'League'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
