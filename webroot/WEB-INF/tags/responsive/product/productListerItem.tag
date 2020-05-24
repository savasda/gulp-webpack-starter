<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="product" required="true" type="de.hybris.platform.commercefacades.product.data.ProductData" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="action" tagdir="/WEB-INF/tags/responsive/action" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<spring:htmlEscape defaultHtmlEscape="true"/>

<c:url value="${product.url}" var="productUrl"/>


<!--item-->
<ycommerce:testId code="test_searchPage_wholeProduct">
    <div class="kuchen-list-item-grid col-12 col-md-6 col-lg-4 col-xl-3">
        <div class="kuchen-list-item swiper-slide js-zoomIn-slide">
            <div class="kuchen-list-item-img">
                <product:productPrimaryImage product="${product}" format="thumbnail"/>
            </div>
            <div class="kuchen-list-item-descr">
                <div class="left-side">
                    <div class="left-side--top">
                        <div class="carusel-item--name">${ycommerce:sanitizeHTML(product.name)}</div>
                        <span class="code carusel-item--code"><spring:theme code="product.view.details.sku"/>${product.displayCode}</span>
                        <span class="price"><product:productListerItemPrice product="${product}"/></span>
                        <a class="left-side--bottom" href="${fn:escapeXml(productUrl)}">
                            <spring:theme code="product.view.details"/>
                            <i class="material-icons">arrow_forward</i>
                        </a>
                    </div>
                </div>
                <div class="right-side">
                    <i class="material-icons">star_border</i>
                    <i class="material-icons js-zoomIn-pdps">zoom_in</i>
                </div>
            </div>
        </div>
    </div>
    <!--End item-->
</ycommerce:testId>









