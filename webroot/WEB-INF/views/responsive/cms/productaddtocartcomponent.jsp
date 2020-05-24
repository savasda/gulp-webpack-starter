<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="action" tagdir="/WEB-INF/tags/responsive/action" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<spring:htmlEscape defaultHtmlEscape="true"/>

<c:set var="isAvalableInStocks"
       value="${product.stock.stockLevelStatus.code eq 'inStock' || product.stock.stockLevel gt 0}"/>

<c:set var="maxQty" value="999"/>
<c:set var="qtyMinus" value="1"/>

<div class="addtocart-component">
    <c:choose>
        <c:when test="${isAvalableInStocks}">
            
            <form:form method="post" id="addToCartForm" class="add_to_cart_form" action="/cart/add">
                <div class="d-flex space-between add-tocart--controls">
                    <input type="hidden" name="productCodePost" value="${fn:escapeXml(product.code)}"/>
                    <div class="qty-selector input-group js-qty-selector">
                        <span class="input-group-btn"><button type="button" class="btn btn-light js-qty-selector-minus" type="button" <c:if test="${qtyMinus <= 1}"><c:out value="disabled='disabled'"/></c:if> ><span class="material-icons">remove</span></button></span>
                        <input type="text" maxlength="3" class="form-control js-qty-selector-input" size="1" value="${qtyMinus}" data-max="${maxQty}" data-min="1" name="qty" id="qty"/>
                        <span class="input-group-btn"><button class="btn btn-light js-qty-selector-plus" type="button"><span class="material-icons">add</span></button></span>
                    </div>
                    <div style="width: auto" class="d-flex">
                        <span class="material-icons">check</span>
                        <spring:theme code="product.variants.in.stock"/>
                    </div>
                    
                </div>
                <button id="addToCartButton" type="submit"
                        class="btn btn-primary btn-block js-add-to-cart js-enable-btn btn-icon glyphicon-shopping-cart"
                        disabled="disabled">
                    <spring:theme code="basket.add.to.basket"/>
                </button>
            </form:form>
        </c:when>
        <c:otherwise>
            <spring:theme code="product.variants.out.of.stock"/>
        </c:otherwise>
    </c:choose>

</div>
