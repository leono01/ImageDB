<%@ page import="imagedb.Imagen" %>



<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'screenshot', 'error')} required">
	<label for="screenshot">
		<g:message code="imagen.screenshot.label" default="Screenshot" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="screenshot" name="screenshot" />
</div>

<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="imagen.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${imagenInstance?.fechaCreacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'ultimaActualizacion', 'error')} required">
	<label for="ultimaActualizacion">
		<g:message code="imagen.ultimaActualizacion.label" default="Ultima Actualizacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="ultimaActualizacion" precision="day"  value="${imagenInstance?.ultimaActualizacion}"  />
</div>

