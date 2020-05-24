<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="format" tagdir="/WEB-INF/tags/shared/format"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<spring:htmlEscape defaultHtmlEscape="true" />

<spring:url value="/cart/miniCart/{/totalDisplay}" var="refreshMiniCartUrl" htmlEscape="false">
	<spring:param name="totalDisplay"  value="${totalDisplay}"/>
</spring:url>
<spring:url value="/cart/rollover/{/componentUid}" var="rolloverPopupUrl" htmlEscape="false">
	<spring:param name="componentUid"  value="${component.uid}"/>
</spring:url>
<c:url value="/cart" var="cartUrl"/>


<a href="${fn:escapeXml(cartUrl)}" class="header-controls--control js-mini-cart-link" data-mini-cart-url="${fn:escapeXml(rolloverPopupUrl)}"
	data-mini-cart-refresh-url="${fn:escapeXml(refreshMiniCartUrl)}"
	data-mini-cart-name="<spring:theme code="text.cart"/>"
	data-mini-cart-empty-name="<spring:theme code="popup.cart.empty"/>"
	data-mini-cart-items-text="<spring:theme code="basket.items"/>"
	>
	<c:choose>
		<c:when test="${totalItems gt 0}">
		<span class="material-icons has-goods" style="font-size: 10px">radio_button_unchecked</span>
		<i class="material-icons">shopping_cart</i>
		<span class="d-none d-md-block"><spring:theme code="text.cart"/></span>
		</c:when>
		<c:otherwise>
		<i class="material-icons">shopping_cart</i>
		<span class="d-none d-md-block"><spring:theme code="text.cart"/></span>
		</c:otherwise>
	</c:choose>
</a>






