
<%@ page import="opd.Census" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		
		
	</head>
	<body>
		<a href="#show-census" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				
			</ul>
		</div>
		<div id="show-census" class="content scaffold-show" role="main">
			<h1><g:message code="Advanced" /></h1>
			
			<div class="">
				<table>
				<tr>
					<td>From:</td>
					<td><g:datePicker name="fromDate" value="${new Date()}" precision="day" noSelection="['':'-Choose-']"/></td>
				</tr>
				<tr>
					<td>To:</td>
					<td><g:datePicker name="fromDate" value="${new Date()}" precision="day" noSelection="['':'-Choose-']"/></td>
				</tr>
				<tr>
					<td></td>
					<td><g:link controller="report" action="report">Download Excel</g:link></td>
				</tr>
				</table>
					 
					
			</div>
		</div>
	</body>
</html>
