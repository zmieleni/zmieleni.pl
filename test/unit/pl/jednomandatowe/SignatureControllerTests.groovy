package pl.jednomandatowe



import org.junit.*
import grails.test.mixin.*

@TestFor(SignatureController)
@Mock(Signature)
class SignatureControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.thankyou()
        assert "/signature/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.signatureInstanceList.size() == 0
        assert model.signatureInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.signatureInstance != null
    }

    void testSave() {
        controller.save()

        assert model.signatureInstance != null
        assert view == '/signature/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/signature/show/1'
        assert controller.flash.message != null
        assert Signature.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/signature/list'

        populateValidParams(params)
        def signature = new Signature(params)

        assert signature.save() != null

        params.id = signature.id

        def model = controller.show()

        assert model.signatureInstance == signature
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/signature/list'

        populateValidParams(params)
        def signature = new Signature(params)

        assert signature.save() != null

        params.id = signature.id

        def model = controller.edit()

        assert model.signatureInstance == signature
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/signature/list'

        response.reset()

        populateValidParams(params)
        def signature = new Signature(params)

        assert signature.save() != null

        // test invalid parameters in update
        params.id = signature.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/signature/edit"
        assert model.signatureInstance != null

        signature.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/signature/show/$signature.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        signature.clearErrors()

        populateValidParams(params)
        params.id = signature.id
        params.version = -1
        controller.update()

        assert view == "/signature/edit"
        assert model.signatureInstance != null
        assert model.signatureInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/signature/list'

        response.reset()

        populateValidParams(params)
        def signature = new Signature(params)

        assert signature.save() != null
        assert Signature.count() == 1

        params.id = signature.id

        controller.delete()

        assert Signature.count() == 0
        assert Signature.get(signature.id) == null
        assert response.redirectedUrl == '/signature/list'
    }
}
