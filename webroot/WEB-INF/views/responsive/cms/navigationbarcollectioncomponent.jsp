<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<c:if test="${component.visible}">
	<ul class="header-container--navigation">
		<c:forEach items="${components}" var="component">
			<c:if test="${component.navigationNode.visible}">
				<cms:component
					component="${component}"
					evaluateRestriction="true"
					class=""
					element="!IoRangeRedDotMode"
					navigationType="offcanvas"/>
			</c:if>
		</c:forEach>
	</ul>
</c:if>

