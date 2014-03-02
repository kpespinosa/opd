
<%@ page import="opd.Census" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'census.label', default: 'Census')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-census" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-census" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list census">
			
				<g:if test="${censusInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="census.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${censusInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.age}">
				<li class="fieldcontain">
					<span id="age-label" class="property-label"><g:message code="census.age.label" default="Age" /></span>
					
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${censusInstance}" field="age"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.sex}">
				<li class="fieldcontain">
					<span id="sex-label" class="property-label"><g:message code="census.sex.label" default="Sex" /></span>
					
						<span class="property-value" aria-labelledby="sex-label"><g:fieldValue bean="${censusInstance}" field="sex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.contactNumber}">
				<li class="fieldcontain">
					<span id="contactNumber-label" class="property-label"><g:message code="census.contactNumber.label" default="Contact Number" /></span>
					
						<span class="property-value" aria-labelledby="contactNumber-label"><g:fieldValue bean="${censusInstance}" field="contactNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.emailAdd}">
				<li class="fieldcontain">
					<span id="emailAdd-label" class="property-label"><g:message code="census.emailAdd.label" default="Email Add" /></span>
					
						<span class="property-value" aria-labelledby="emailAdd-label"><g:fieldValue bean="${censusInstance}" field="emailAdd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.sssOrGsisId}">
				<li class="fieldcontain">
					<span id="sssOrGsisId-label" class="property-label"><g:message code="census.sssOrGsisId.label" default="Sss Or Gsis Id" /></span>
					
						<span class="property-value" aria-labelledby="sssOrGsisId-label"><g:fieldValue bean="${censusInstance}" field="sssOrGsisId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.philhealthId}">
				<li class="fieldcontain">
					<span id="philhealthId-label" class="property-label"><g:message code="census.philhealthId.label" default="Philhealth Id" /></span>
					
						<span class="property-value" aria-labelledby="philhealthId-label"><g:fieldValue bean="${censusInstance}" field="philhealthId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.dateConsulted}">
				<li class="fieldcontain">
					<span id="dateConsulted-label" class="property-label"><g:message code="census.dateConsulted.label" default="Date Consulted" /></span>
					
						<span class="property-value" aria-labelledby="dateConsulted-label"><g:formatDate date="${censusInstance?.dateConsulted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.consultationType}">
				<li class="fieldcontain">
					<span id="consultationType-label" class="property-label"><g:message code="census.consultationType.label" default="Consultation Type" /></span>
					
						<span class="property-value" aria-labelledby="consultationType-label"><g:fieldValue bean="${censusInstance}" field="consultationType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.residentType}">
				<li class="fieldcontain">
					<span id="residentType-label" class="property-label"><g:message code="census.residentType.label" default="Resident Type" /></span>
					
						<span class="property-value" aria-labelledby="residentType-label"><g:fieldValue bean="${censusInstance}" field="residentType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.consultantType}">
				<li class="fieldcontain">
					<span id="consultantType-label" class="property-label"><g:message code="census.consultantType.label" default="Consultant Type" /></span>
					
						<span class="property-value" aria-labelledby="consultantType-label"><g:fieldValue bean="${censusInstance}" field="consultantType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.chiefComplaint}">
				<li class="fieldcontain">
					<span id="chiefComplaint-label" class="property-label"><g:message code="census.chiefComplaint.label" default="Chief Complaint" /></span>
					
						<span class="property-value" aria-labelledby="chiefComplaint-label"><g:fieldValue bean="${censusInstance}" field="chiefComplaint"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.historyOfIllness}">
				<li class="fieldcontain">
					<span id="historyOfIllness-label" class="property-label"><g:message code="census.historyOfIllness.label" default="History Of Illness" /></span>
					
						<span class="property-value" aria-labelledby="historyOfIllness-label"><g:fieldValue bean="${censusInstance}" field="historyOfIllness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.physicalExam}">
				<li class="fieldcontain">
					<span id="physicalExam-label" class="property-label"><g:message code="census.physicalExam.label" default="Physical Exam" /></span>
					
						<span class="property-value" aria-labelledby="physicalExam-label"><g:fieldValue bean="${censusInstance}" field="physicalExam"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.labOrdered}">
				<li class="fieldcontain">
					<span id="labOrdered-label" class="property-label"><g:message code="census.labOrdered.label" default="Lab Ordered" /></span>
					
						<span class="property-value" aria-labelledby="labOrdered-label"><g:fieldValue bean="${censusInstance}" field="labOrdered"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.labResults}">
				<li class="fieldcontain">
					<span id="labResults-label" class="property-label"><g:message code="census.labResults.label" default="Lab Results" /></span>
					
						<span class="property-value" aria-labelledby="labResults-label"><g:fieldValue bean="${censusInstance}" field="labResults"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.treatment}">
				<li class="fieldcontain">
					<span id="treatment-label" class="property-label"><g:message code="census.treatment.label" default="Treatment" /></span>
					
						<span class="property-value" aria-labelledby="treatment-label"><g:fieldValue bean="${censusInstance}" field="treatment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.dischargeDiagnosis}">
				<li class="fieldcontain">
					<span id="dischargeDiagnosis-label" class="property-label"><g:message code="census.dischargeDiagnosis.label" default="Discharge Diagnosis" /></span>
					
						<span class="property-value" aria-labelledby="dischargeDiagnosis-label"><g:fieldValue bean="${censusInstance}" field="dischargeDiagnosis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.icd10}">
				<li class="fieldcontain">
					<span id="icd10-label" class="property-label"><g:message code="census.icd10.label" default="Icd10" /></span>
					
						<span class="property-value" aria-labelledby="icd10-label"><g:fieldValue bean="${censusInstance}" field="icd10"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.followup}">
				<li class="fieldcontain">
					<span id="followup-label" class="property-label"><g:message code="census.followup.label" default="Followup" /></span>
					
						<span class="property-value" aria-labelledby="followup-label"><g:fieldValue bean="${censusInstance}" field="followup"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.disposition}">
				<li class="fieldcontain">
					<span id="disposition-label" class="property-label"><g:message code="census.disposition.label" default="Disposition" /></span>
					
						<span class="property-value" aria-labelledby="disposition-label"><g:fieldValue bean="${censusInstance}" field="disposition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${censusInstance?.attendingResidents}">
				<li class="fieldcontain">
					<span id="attendingResidents-label" class="property-label"><g:message code="census.attendingResidents.label" default="Attending Residents" /></span>
					
						<span class="property-value" aria-labelledby="attendingResidents-label"><g:fieldValue bean="${censusInstance}" field="attendingResidents"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:censusInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${censusInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
