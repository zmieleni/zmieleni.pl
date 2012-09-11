package pl.jednomandatowe



import org.junit.*
import grails.test.mixin.*

@TestFor(OccupationController)
@Mock(Occupation)
class OccupationControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/occupation/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.occupationInstanceList.size() == 0
        assert model.occupationInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.occupationInstance != null
    }

    void testSave() {
        controller.save()

        assert model.occupationInstance != null
        assert view == '/occupation/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/occupation/show/1'
        assert controller.flash.message != null
        assert Occupation.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/occupation/list'

        populateValidParams(params)
        def occupation = new Occupation(params)

        assert occupation.save() != null

        params.id = occupation.id

        def model = controller.show()

        assert model.occupationInstance == occupation
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/occupation/list'

        populateValidParams(params)
        def occupation = new Occupation(params)

        assert occupation.save() != null

        params.id = occupation.id

        def model = controller.edit()

        assert model.occupationInstance == occupation
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/occupation/list'

        response.reset()

        populateValidParams(params)
        def occupation = new Occupation(params)

        assert occupation.save() != null

        // test invalid parameters in update
        params.id = occupation.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/occupation/edit"
        assert model.occupationInstance != null

        occupation.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/occupation/show/$occupation.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        occupation.clearErrors()

        populateValidParams(params)
        params.id = occupation.id
        params.version = -1
        controller.update()

        assert view == "/occupation/edit"
        assert model.occupationInstance != null
        assert model.occupationInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/occupation/list'

        response.reset()

        populateValidParams(params)
        def occupation = new Occupation(params)

        assert occupation.save() != null
        assert Occupation.count() == 1

        params.id = occupation.id

        controller.delete()

        assert Occupation.count() == 0
        assert Occupation.get(occupation.id) == null
        assert response.redirectedUrl == '/occupation/list'
    }
}
