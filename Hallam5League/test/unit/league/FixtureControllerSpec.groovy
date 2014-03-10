package league



import grails.test.mixin.*
import spock.lang.*

@TestFor(FixtureController)
@Mock(Fixture)
class FixtureControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.fixtureInstanceList
            model.fixtureInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.fixtureInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def fixture = new Fixture()
            fixture.validate()
            controller.save(fixture)

        then:"The create view is rendered again with the correct model"
            model.fixtureInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            fixture = new Fixture(params)

            controller.save(fixture)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/fixture/show/1'
            controller.flash.message != null
            Fixture.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def fixture = new Fixture(params)
            controller.show(fixture)

        then:"A model is populated containing the domain instance"
            model.fixtureInstance == fixture
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def fixture = new Fixture(params)
            controller.edit(fixture)

        then:"A model is populated containing the domain instance"
            model.fixtureInstance == fixture
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/fixture/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def fixture = new Fixture()
            fixture.validate()
            controller.update(fixture)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.fixtureInstance == fixture

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            fixture = new Fixture(params).save(flush: true)
            controller.update(fixture)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/fixture/show/$fixture.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/fixture/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def fixture = new Fixture(params).save(flush: true)

        then:"It exists"
            Fixture.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(fixture)

        then:"The instance is deleted"
            Fixture.count() == 0
            response.redirectedUrl == '/fixture/index'
            flash.message != null
    }
}
