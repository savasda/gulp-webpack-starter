
<%@ attribute name="product" required="true" type="de.hybris.platform.commercefacades.product.data.ProductData" %>
<%@ attribute name="showPrice" required="true"
              type="java.lang.Boolean" %>
<%@ attribute name="showProductTitle" required="true"
              type="java.lang.Boolean" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="format" tagdir="/WEB-INF/tags/shared/format"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="carusel-item swiper-slide js-zoomIn-slide">
    <div class="carusel-item--thumb ">
        <product:productPrimaryReferenceImage product="${product}" format="product" />
    </div>
    <c:url value="${product.url}" var="productUrl"/>
    <div class="carusel-item--descr">
        <div class="carusel-item--left">
            <c:if test="${showProductTitle}">
                <div class="carusel-item--name">${fn:escapeXml(product.name)}</div>
                <div class="carusel-item--code"><spring:theme code="product.view.details.sku"/>${fn:escapeXml(product.displayCode)}</div>
            </c:if>
            <c:if test="${showPrice}">
                <div class="carusel-item--price"><format:fromPrice priceData="${product.price}" /></div>
            </c:if>
            <a  href="${fn:escapeXml(productUrl)}"  class="carusel-item--details">
                <spring:theme code="product.view.details.link"/>
                <span class="material-icons">
											arrow_forward
										</span>
            </a>
        </div>

        <div class="carusel-item--right">
            <button class="material-icons">
                star_border
            </button>
            <button class="material-icons js-zoomIn-pdp">
                zoom_in
            </button>
        </div>
    </div>
</div>
