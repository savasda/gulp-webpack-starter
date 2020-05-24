<%@ page trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="format" tagdir="/WEB-INF/tags/shared/format" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="component" tagdir="/WEB-INF/tags/shared/component" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<spring:htmlEscape defaultHtmlEscape="true"/>
<spring:eval expression="T(de.nobilia.eshop.core.enums.CarouselItemDisplayType).KITCHEN" var="kitchen"/>
<spring:eval expression="T(de.nobilia.eshop.core.enums.CarouselItemDisplayType).PRODUCT" var="product"/>


<div class="container swiper-carusel-productReferences">
    <c:choose>

        <c:when test="${not empty productReferences and component.maximumNumberProducts > 0}">

            <h3 class="top-line">${fn:escapeXml(component.title)}</h3>

            <div class="swiper-container-p-cont">
                <div class="swiper-btn swiper-next">
                    <i class="material-icons">navigate_next</i>
                </div>
                <div class="swiper-container-p">
                    <div class="swiper-wrapper">
                        <c:forEach end="${component.maximumNumberProducts}" items="${productReferences}" var="productReference">
                            <c:choose>
                                <c:when test="${kitchen eq component.itemDisplayType}">
                                    <product:kitchenCarouselPreview product="${productReference.target}"
                                                                    showPrice="${component.displayProductPrices}"
                                                                    showProductTitle="${component.displayProductTitles}"/>
                                </c:when>
                                <c:otherwise>
                                    <product:productCarouselPreview product="${productReference.target}"
                                                                    showPrice="${component.displayProductPrices}"
                                                                    showProductTitle="${component.displayProductTitles}"/>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </div>
                </div>
                <div class="swiper-btn swiper-prev"><i class="material-icons">navigate_before</i></div>
            </div>
        </c:when>

        <c:otherwise>
            <component:emptyComponent/>
        </c:otherwise>
    </c:choose>
</div>
