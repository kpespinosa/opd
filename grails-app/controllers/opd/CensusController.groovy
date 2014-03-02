package opd



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CensusController {
	
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Census.list(params), model:[censusInstanceCount: Census.count()]
    }

    def show(Census censusInstance) {
        respond censusInstance
    }

    def create() {
        respond new Census(params)
    }

    @Transactional
    def save(Census censusInstance) {
        if (censusInstance == null) {
            notFound()
            return
        }

        if (censusInstance.hasErrors()) {
            respond censusInstance.errors, view:'create'
            return
        }

        censusInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'censusInstance.label', default: 'Census'), censusInstance.id])
                redirect censusInstance
            }
            '*' { respond censusInstance, [status: CREATED] }
        }
    }

    def edit(Census censusInstance) {
        respond censusInstance
    }

    @Transactional
    def update(Census censusInstance) {
        if (censusInstance == null) {
            notFound()
            return
        }

        if (censusInstance.hasErrors()) {
            respond censusInstance.errors, view:'edit'
            return
        }

        censusInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Census.label', default: 'Census'), censusInstance.id])
                redirect censusInstance
            }
            '*'{ respond censusInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Census censusInstance) {

        if (censusInstance == null) {
            notFound()
            return
        }

        censusInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Census.label', default: 'Census'), censusInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'censusInstance.label', default: 'Census'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	def searchableService //inject the service (make sure the name is correct)
	
   def search = {
	   def query = params.q
	   if(query){
		   def srchResults = searchableService.search(query)
		   render(view: "index",
				  model: [censusInstanceList: srchResults.results,
						censusInstanceTotal:srchResults.total])
	   }else{
		   redirect(action: "index")
	   }
   }
}
