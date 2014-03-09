
<%@ page import="opd.Census" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'census.label', default: 'Census')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-census" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link controller="census" action="download">Download Report</g:link></li>
			</ul>
		</div>
		<div id="list-census" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:form action="search">
			    <div class="search">
			        <input type="text" name="q" value="${params.q}" />
			        <input type="submit" value="Search" />
			    </div>
			</g:form>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'census.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="age" title="${message(code: 'census.age.label', default: 'Age')}" />
					
						<g:sortableColumn property="sex" title="${message(code: 'census.sex.label', default: 'Sex')}" />
					
						<g:sortableColumn property="contactNumber" title="${message(code: 'census.contactNumber.label', default: 'Contact Number')}" />
					
						<g:sortableColumn property="emailAdd" title="${message(code: 'census.emailAdd.label', default: 'Email Add')}" />
					
						<g:sortableColumn property="sssOrGsisId" title="${message(code: 'census.sssOrGsisId.label', default: 'Sss Or Gsis Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${censusInstanceList}" status="i" var="censusInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${censusInstance.id}">${fieldValue(bean: censusInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: censusInstance, field: "age")}</td>
					
						<td>${fieldValue(bean: censusInstance, field: "sex")}</td>
					
						<td>${fieldValue(bean: censusInstance, field: "contactNumber")}</td>
					
						<td>${fieldValue(bean: censusInstance, field: "emailAdd")}</td>
					
						<td>${fieldValue(bean: censusInstance, field: "sssOrGsisId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${censusInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
