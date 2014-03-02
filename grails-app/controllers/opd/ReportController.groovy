package opd

import jxl.*
import jxl.write.*

class ReportController {

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
            sheet.addCell(new Label(0, row, it.name, format))
            sheet.addCell(new Label(1, row++, it.age, format))
        }
    }
}
