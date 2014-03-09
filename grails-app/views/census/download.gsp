
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
			<h1>Date Range</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="search" >

					<g:form name="myForm" controller="report" action="range" id="1">
					
					From: <g:datePicker name="fromDate" value="${new Date()}" precision="day" noSelection="['':'-Choose-']" relativeYears="[-2..7]"/>
					To:<g:datePicker name="toDate" value="${new Date()}" precision="day" noSelection="['':'-Choose-']" relativeYears="[-2..7]"/></td>
										
					<g:submitButton name="submit" value="Download" />
					</g:form>
					
			</div>
			
		</div>
	</body>
</html>
