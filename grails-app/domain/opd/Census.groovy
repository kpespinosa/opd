package opd

class Census {
	int id
	String name
	int age
	String sex
	String contactNumber
	String emailAdd
	String sssOrGsisId
	String philhealthId
	Date dateConsulted
	String consultationType
	String residentType
	String consultantType
	String chiefComplaint
	String historyOfIllness
	String physicalExam
	String labOrdered
	String labResults
	String treatment
	String dischargeDiagnosis
	String icd10
	String followup
	String disposition
	String attendingResidents
	
	static searchable = true
	
    static constraints = {
		name blank: false
		age	min: 0
		sex inList: ["Male", "Female"], blank: false
		contactNumber blank: true, nullable: true
		emailAdd email: true, nullable: true
		sssOrGsisId blank: true, nullable: true
		philhealthId blank: true, nullable: true
		dateConsulted()
		consultationType inList: ["Service", "Pay"], blank: false
		residentType inList: ["I", "II", "III"], blank: false
		consultantType inList: ["Fellow", "Diplomat", "Non-Fellow"], blank: false
		chiefComplaint widget: 'textarea', blank: false
		historyOfIllness widget: 'textarea', nullable: true
		physicalExam widget: 'textarea', nullable: true
		labOrdered widget: 'textarea', nullable: true
		labResults widget: 'textarea', nullable: true
		treatment widget: 'textarea', nullable: true
		dischargeDiagnosis widget: 'textarea', nullable: true
		icd10 blank: true, nullable: true
		followup blank: false
		disposition blank: true, nullable: true
		attendingResidents widget: 'textarea', nullable: true
    }
}
