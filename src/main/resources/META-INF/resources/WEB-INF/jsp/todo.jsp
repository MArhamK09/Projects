<%@include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<h2>Courses Details</h2>
	<tui:form method="post" modelAttribute="todo">
		<fieldset class="mb-3">
			<tui:label path="description">Description</tui:label>
			Description:
			<tui:input type="text" path="description" required="required" />
			<tui:errors path="description" cssClass="text-warning" />
		</fieldset>

		<fieldset class="mb-3">
			<tui:label path="targetDate">Target Date</tui:label>
			Target Date:
			<tui:input type="text" path="targetDate" required="required" />
			<tui:errors path="targetDate" cssClass="text-warning" />
		</fieldset>

		<tui:input type="hidden" path="id" />
		<tui:input type="hidden" path="done" />
		<input type="submit" class="btn btn-success" />
	</tui:form>
	<hr>
</div>

<%@ include file="common/footer.jspf"%>
<script
	src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript">
	$('#targetDate').datepicker({
		format : 'yyyy-mm-dd',
		startDate : '-3d'
	});
</script>