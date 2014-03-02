package opd



import static org.springframework.http.HttpStatus.*

import java.io.File;

import grails.transaction.Transactional

import jxl.WorkbookSettings
import jxl.Workbook
import jxl.write.Label
import jxl.write.WritableCellFormat
import jxl.write.WritableFont
import jxl.write.WritableSheet
import jxl.write.WritableWorkbook

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
	
	def advanced(){
		
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
   
   def report = {
	   
	   def file = createReport(Census.list())

	   response.setHeader('Content-disposition', 'attachment;filename=Report.xls')
	   response.setHeader('Content-length', "${file.size()}")

	   OutputStream out = new BufferedOutputStream(response.outputStream)

	   try {
		   out.write(file.bytes)

	   } finally {
		   out.close()
		   return false
	   }
   }

   private File createReport(def list) {
	   
	   WorkbookSettings workbookSettings = new WorkbookSettings()
	   workbookSettings.locale = Locale.default

	   def file = File.createTempFile('myExcelDocument', '.xls')
	   file.deleteOnExit()

	   WritableWorkbook workbook = Workbook.createWorkbook(file, workbookSettings)

	   WritableFont font = new WritableFont(WritableFont.ARIAL, 12)
	   WritableCellFormat format = new WritableCellFormat(font)

	   def row = 0
	   WritableSheet sheet = workbook.createSheet('MySheet', 0)

	   list.each {
		   // if list contains objects with 'foo' and 'bar' properties, this will
		   // output one row per list item, with column A containing foo and column
		   // B containing bar
		   sheet.addCell(new Label(0, row, "Name", format))
		   sheet.addCell(new Label(1, row++, "Age", format))
	   }
	   
	   workbook.write();
	   workbook.close();
   }
}
