<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="format" tagdir="/WEB-INF/tags/shared/format" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ attribute name="product" required="true" type="de.hybris.platform.commercefacades.product.data.ProductData" %>

<c:set var="showAddToCart" value="" scope="session"/>
<spring:htmlEscape defaultHtmlEscape="true" />

    <%-- Verify if products is a multidimensional product --%>
<c:if test="${product.multidimensional and not empty product.variantMatrix}">
    <c:set var="levels" value="${fn:length(product.categories)}"/>
    <c:set var="selectedIndex" value="0"/>
    <c:if test="${ not(levels eq 0)}">
        <span><spring:theme code="product.variants.select.variant"/></span>
        <div class="variant-section">
            <div class="variant-selector">
                <c:forEach begin="1" end="${levels}" varStatus="loop">
                    <c:set var="i" value="0"/>
                    <div class="selector-type">
                        <c:choose>
                            <c:when test="${loop.index eq 1}">
                                <c:set var="productMatrix" value="${product.variantMatrix }"/>
                            </c:when>
                            <c:otherwise>
                                <c:set var="productMatrix" value="${productMatrix[selectedIndex].elements }"/>
                            </c:otherwise>
                        </c:choose>
                        <div class="variant-name">${fn:escapeXml(productMatrix[0].parentVariantCategory.name)}</div>
                        <c:choose>
                            <c:when test="${productMatrix[0].parentVariantCategory.hasImage}">
                                <ul class="variant-list">
                                    <c:forEach items="${productMatrix}" var="variantCategory">
                                        <li <c:if test="${variantCategory.variantOption.url eq product.url}">class="selected"</c:if>>
                                            <c:url value="${variantCategory.variantOption.url}" var="productStyleUrl"/>
                                            <a href="${fn:escapeXml(productStyleUrl)}" class="swatchVariant"
                                               name="${fn:escapeXml(productStyleUrl)}">
                                                <product:productImage product="${product}"
                                                                      code="${variantCategory.variantOption.code}"
                                                                      format="styleSwatch"/>
                                            </a>
                                        </li>
                                        <c:if test="${(variantCategory.variantOption.code eq product.code)}">
                                            <c:set var="selectedIndex" value="${i}"/>
                                        </c:if>
                                        <c:set var="i" value="${i + 1}"/>
                                    </c:forEach>
                                </ul>
                            </c:when>
                            <c:otherwise>
                                <c:choose>
                                    <c:when test="${fn:length(productMatrix) eq 1}">
                                        <c:set var="disabledSelect" value="disabled"/>
                                    </c:when>
                                    <c:otherwise>
                                        <c:set var="disabledSelect" value=""/>
                                    </c:otherwise>
                                </c:choose>
                                <select id="priority${loop.index}" class="selectPriority form-control" ${disabledSelect}>
                                    <c:forEach items="${productMatrix}" var="variantCategory">
                                        <c:url value="${variantCategory.variantOption.url}" var="productStyleUrl"/>
                                        <option value="${fn:escapeXml(productStyleUrl)}" ${(variantCategory.variantOption.code eq product.code) ? 'selected="selected"' : ''}>
                                                ${fn:escapeXml(variantCategory.variantValueCategory.name)}</option>
                                        <c:if test="${(variantCategory.variantOption.code eq product.code)}">
                                            <c:set var="selectedIndex" value="${i}"/>
                                        </c:if>
                                        <c:set var="i" value="${i + 1}"/>
                                    </c:forEach>
                                </select>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </c:forEach>
            </div>
        </div>
    </c:if>
</c:if>
