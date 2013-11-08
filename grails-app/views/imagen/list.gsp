
<%@ page import="imagedb.Imagen" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imagen.label', default: 'Imagen')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-imagen" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-imagen" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="screenshot" title="${message(code: 'imagen.screenshot.label', default: 'Screenshot')}" />
					
						<g:sortableColumn property="fechaCreacion" title="${message(code: 'imagen.fechaCreacion.label', default: 'Fecha Creacion')}" />
					
						<g:sortableColumn property="ultimaActualizacion" title="${message(code: 'imagen.ultimaActualizacion.label', default: 'Ultima Actualizacion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${imagenInstanceList}" status="i" var="imagenInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${imagenInstance.id}">${fieldValue(bean: imagenInstance, field: "id")}
                                                        <img width="40%" height="60%" src="http://localhost:8080/ImageDB/imagen/showImage/${imagenInstance.id}">
                                                </g:link></td>
					
						<td><g:formatDate date="${imagenInstance.fechaCreacion}" /></td>
					
						<td><g:formatDate date="${imagenInstance.ultimaActualizacion}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${imagenInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
