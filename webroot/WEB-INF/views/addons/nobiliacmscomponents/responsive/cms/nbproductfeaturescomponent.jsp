<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty product.classifications}">
    <section class="product-spec">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3 class="top-line">${fn:escapeXml(title)}</h3>
                    <div class="product-details--spec">
                        <div class="row">
                            <div class="${fn:length(product.advice) > 0 ? 'col-12  col-sm-6' : 'col-12'}">
                                <product:productDetailsClassifications product="${product}"/>
                            </div>
                            <c:if test="${fn:length(product.advice) > 0}">
                                <div class="col-12 col-sm-6">
                                    <h3><spring:theme code="page.product.classification.advice"/></h3>
                                    <p>${product.advice}</p>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</c:if>



