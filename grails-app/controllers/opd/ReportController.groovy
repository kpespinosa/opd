package opd


import jxl.WorkbookSettings
import jxl.Workbook
import jxl.write.Label
import jxl.write.WritableCellFormat
import jxl.write.WritableFont
import jxl.write.WritableSheet
import jxl.write.WritableWorkbook
import groovy.time.TimeCategory

class ReportController {
	
	
	def range = {
		def file = createReport(Census.findAllByDateConsultedBetween(params.fromDate, params.toDate))
		
		response.setHeader('Content-disposition', 'attachment;filename=AllReport.xls')
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

        def row = 1
        WritableSheet sheet = workbook.createSheet('MySheet', 0)

		sheet.addCell(new Label(0, 0, "Name", format))
		sheet.addCell(new Label(1, 0, "Age", format))
		sheet.addCell(new Label(2, 0, "Sex", format))
		sheet.addCell(new Label(3, 0, "Date Consulted", format))
		sheet.addCell(new Label(4, 0, "Service or Pay", format))
		sheet.addCell(new Label(5, 0, "Resident", format))
		sheet.addCell(new Label(6, 0, "Consultant", format))
		sheet.addCell(new Label(7, 0, "Chief Complaint", format))
		sheet.addCell(new Label(8, 0, "Discharge Primary Diagnosis", format))
		sheet.addCell(new Label(9, 0, "ICD10", format))
		sheet.addCell(new Label(10, 0, "Follow-up", format))
		sheet.addCell(new Label(11, 0, "Disposition", format))
		//add others here
        list.each {
            // if list contains objects with 'foo' and 'bar' properties, this will
            // output one row per list item, with column A containing foo and column
            // B containing bar
			Date date = it.dateConsulted
			String strDate = date.format('MM/dd/yy')
			
			sheet.addCell(new Label(0, row, it.name, format))
			sheet.addCell(new Label(1, row, it.age+"", format))
			sheet.addCell(new Label(2, row, it.sex, format))
			sheet.addCell(new Label(3, row, strDate, format))
			sheet.addCell(new Label(4, row, it.consultationType+"", format))
			sheet.addCell(new Label(5, row, it.residentType+"", format))
			sheet.addCell(new Label(6, row, it.consultantType+"", format))
			sheet.addCell(new Label(7, row, it.chiefComplaint+"", format))
			sheet.addCell(new Label(8, row, it.dischargeDiagnosis+"", format))
			sheet.addCell(new Label(9, row, it.icd10+"", format))
			sheet.addCell(new Label(10, row, it.followup+"", format))
			sheet.addCell(new Label(11, row, it.disposition+"", format))
			row++
			
			
			//add others here
        }
		workbook.write();
		workbook.close();
		return file

    }
	
}
