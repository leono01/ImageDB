
<%@ page import="imagedb.Imagen" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imagen.label', default: 'Imagen')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-imagen" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-imagen" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list imagen">
			
				<g:if test="${imagenInstance?.screenshot}">
				<li class="fieldcontain">
					<span id="screenshot-label" class="property-label"><g:message code="imagen.screenshot.label" default="Imagen: " /></span>
					<g:link action="showImage" id="${imagenInstance.id}">${fieldValue(bean: imagenInstance, field: "id")}
                                            <img src="http://localhost:8080/ImagenDB/imagen/showImage/${imagenInstance.id}">
                                        </g:link>
				</li>
				</g:if>
			
				<g:if test="${imagenInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="imagen.fechaCreacion.label" default="Fecha Creacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${imagenInstance?.fechaCreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${imagenInstance?.ultimaActualizacion}">
				<li class="fieldcontain">
					<span id="ultimaActualizacion-label" class="property-label"><g:message code="imagen.ultimaActualizacion.label" default="Ultima Actualizacion" /></span>
					
						<span class="property-value" aria-labelledby="ultimaActualizacion-label"><g:formatDate date="${imagenInstance?.ultimaActualizacion}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${imagenInstance?.id}" />
					<g:link class="edit" action="edit" id="${imagenInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
