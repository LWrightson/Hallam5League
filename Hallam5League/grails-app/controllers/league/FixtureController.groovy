package league



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FixtureController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Fixture.list(params), model:[fixtureInstanceCount: Fixture.count()]
    }

    def show(Fixture fixtureInstance) {
        respond fixtureInstance
    }

    def create() {
        respond new Fixture(params)
    }

    @Transactional
    def save(Fixture fixtureInstance) {
        if (fixtureInstance == null) {
            notFound()
            return
        }

        if (fixtureInstance.hasErrors()) {
            respond fixtureInstance.errors, view:'create'
            return
        }

        fixtureInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'fixtureInstance.label', default: 'Fixture'), fixtureInstance.id])
                redirect fixtureInstance
            }
            '*' { respond fixtureInstance, [status: CREATED] }
        }
    }

    def edit(Fixture fixtureInstance) {
        respond fixtureInstance
    }

    @Transactional
    def update(Fixture fixtureInstance) {
        if (fixtureInstance == null) {
            notFound()
            return
        }

        if (fixtureInstance.hasErrors()) {
            respond fixtureInstance.errors, view:'edit'
            return
        }

        fixtureInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Fixture.label', default: 'Fixture'), fixtureInstance.id])
                redirect fixtureInstance
            }
            '*'{ respond fixtureInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Fixture fixtureInstance) {

        if (fixtureInstance == null) {
            notFound()
            return
        }

        fixtureInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Fixture.label', default: 'Fixture'), fixtureInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'fixtureInstance.label', default: 'Fixture'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
