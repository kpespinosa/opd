<%@ page import="opd.Census" %>



<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="census.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${censusInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'age', 'error')} required">
	<label for="age">
		<g:message code="census.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="age" type="number" min="0" value="${censusInstance.age}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="census.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sex" from="${censusInstance.constraints.sex.inList}" required="" value="${censusInstance?.sex}" valueMessagePrefix="census.sex"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'contactNumber', 'error')} ">
	<label for="contactNumber">
		<g:message code="census.contactNumber.label" default="Contact Number" />
		
	</label>
	<g:textField name="contactNumber" value="${censusInstance?.contactNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'emailAdd', 'error')} ">
	<label for="emailAdd">
		<g:message code="census.emailAdd.label" default="Email Add" />
		
	</label>
	<g:field type="email" name="emailAdd" value="${censusInstance?.emailAdd}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'sssOrGsisId', 'error')} ">
	<label for="sssOrGsisId">
		<g:message code="census.sssOrGsisId.label" default="Sss Or Gsis Id" />
		
	</label>
	<g:textField name="sssOrGsisId" value="${censusInstance?.sssOrGsisId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'philhealthId', 'error')} ">
	<label for="philhealthId">
		<g:message code="census.philhealthId.label" default="Philhealth Id" />
		
	</label>
	<g:textField name="philhealthId" value="${censusInstance?.philhealthId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'dateConsulted', 'error')} required">
	<label for="dateConsulted">
		<g:message code="census.dateConsulted.label" default="Date Consulted" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateConsulted" precision="day"  value="${censusInstance?.dateConsulted}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'consultationType', 'error')} required">
	<label for="consultationType">
		<g:message code="census.consultationType.label" default="Consultation Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="consultationType" from="${censusInstance.constraints.consultationType.inList}" required="" value="${censusInstance?.consultationType}" valueMessagePrefix="census.consultationType"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'residentType', 'error')} required">
	<label for="residentType">
		<g:message code="census.residentType.label" default="Resident Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="residentType" from="${censusInstance.constraints.residentType.inList}" required="" value="${censusInstance?.residentType}" valueMessagePrefix="census.residentType"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'consultantType', 'error')} required">
	<label for="consultantType">
		<g:message code="census.consultantType.label" default="Consultant Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="consultantType" from="${censusInstance.constraints.consultantType.inList}" required="" value="${censusInstance?.consultantType}" valueMessagePrefix="census.consultantType"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'chiefComplaint', 'error')} required">
	<label for="chiefComplaint">
		<g:message code="census.chiefComplaint.label" default="Chief Complaint" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="chiefComplaint" cols="40" rows="5" required="" value="${censusInstance?.chiefComplaint}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'historyOfIllness', 'error')} ">
	<label for="historyOfIllness">
		<g:message code="census.historyOfIllness.label" default="History Of Illness" />
		
	</label>
	<g:textArea name="historyOfIllness" cols="40" rows="5" value="${censusInstance?.historyOfIllness}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'physicalExam', 'error')} ">
	<label for="physicalExam">
		<g:message code="census.physicalExam.label" default="Physical Exam" />
		
	</label>
	<g:textArea name="physicalExam" cols="40" rows="5" value="${censusInstance?.physicalExam}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'labOrdered', 'error')} ">
	<label for="labOrdered">
		<g:message code="census.labOrdered.label" default="Lab Ordered" />
		
	</label>
	<g:textArea name="labOrdered" cols="40" rows="5" value="${censusInstance?.labOrdered}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'labResults', 'error')} ">
	<label for="labResults">
		<g:message code="census.labResults.label" default="Lab Results" />
		
	</label>
	<g:textArea name="labResults" cols="40" rows="5" value="${censusInstance?.labResults}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'treatment', 'error')} ">
	<label for="treatment">
		<g:message code="census.treatment.label" default="Treatment" />
		
	</label>
	<g:textArea name="treatment" cols="40" rows="5" value="${censusInstance?.treatment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'dischargeDiagnosis', 'error')} ">
	<label for="dischargeDiagnosis">
		<g:message code="census.dischargeDiagnosis.label" default="Discharge Diagnosis" />
		
	</label>
	<g:textArea name="dischargeDiagnosis" cols="40" rows="5" value="${censusInstance?.dischargeDiagnosis}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'icd10', 'error')} ">
	<label for="icd10">
		<g:message code="census.icd10.label" default="Icd10" />
		
	</label>
	<g:textField name="icd10" value="${censusInstance?.icd10}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'followup', 'error')} required">
	<label for="followup">
		<g:message code="census.followup.label" default="Followup" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="followup" required="" value="${censusInstance?.followup}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'disposition', 'error')} ">
	<label for="disposition">
		<g:message code="census.disposition.label" default="Disposition" />
		
	</label>
	<g:textField name="disposition" value="${censusInstance?.disposition}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: censusInstance, field: 'attendingResidents', 'error')} ">
	<label for="attendingResidents">
		<g:message code="census.attendingResidents.label" default="Attending Residents" />
		
	</label>
	<g:textArea name="attendingResidents" cols="40" rows="5" value="${censusInstance?.attendingResidents}"/>
</div>

