<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="product" required="true" type="de.hybris.platform.commercefacades.product.data.ProductData" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>






<c:if test="${not empty product.classifications}">
    <c:forEach items="${product.classifications}" var="classification">
                <h3>${fn:escapeXml(classification.name)}</h3>
                <ul>
                    <c:forEach items="${classification.features}" var="feature">
                        <li>
                            <div class="spec-tooltip-wrapper">
                                <span>${fn:escapeXml(feature.name)}</span>
                                <c:if test="${not empty feature.description}">
                                    <object class="spec-tooltip" type="image/svg+xml" data="/_ui/responsive/theme-custom/assets/images/question.svg"  data-tippy-content="${feature.description}"></object>
                                </c:if>
                            </div>
                            <c:forEach items="${feature.featureValues}" var="value" varStatus="status">

                                <c:choose>
                                    <c:when test="${feature.range}">
                                        <span>${fn:escapeXml(value.value)}&ensp;${not status.last ? '-' : fn:escapeXml(feature.featureUnit.symbol)}</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span>${fn:escapeXml(value.value)}&ensp;${fn:escapeXml(feature.featureUnit.symbol)}</span>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </li>
                    </c:forEach>
                </ul>
    </c:forEach>
</c:if>


