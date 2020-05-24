	<%@ page trimDirectiveWhitespaces="true" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
		<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<c:set value="${component.styleClass} ${dropDownLayout}" var="bannerClasses"/>
<c:set var="isAnonymous" value="true" />
<sec:authorize access="!hasAnyRole('ROLE_ANONYMOUS')">
    <c:set var="isAnonymous" value="false" />
</sec:authorize>
<li class="navigation-node <c:if test='${not empty component.navigationNode.children}'>navigation-node--has-nodes</c:if>">
    <cms:component component="${component.link}" evaluateRestriction="true"/>
	<c:if test='${not empty component.navigationNode.children}'>
		<svg class="d-none d-md-block" width="7" height="4" viewBox="0 0 7 4" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M0.72165 0L3.06 2.47336L5.39835 0L6.12 0.763318L3.06 4L0 0.763318L0.72165 0Z" fill="#4F4F4F"/>
		</svg>
	</c:if> 
    <c:if test="${not empty component.navigationNode.children}">
   
		<div class="navigation-node--sub">
			<c:forEach items="${component.navigationNode.children}" var="child">
				<c:if test="${child.visible}">
					
					<ul class="navigation-node--sub-container">
						<c:forEach items="${child.links}" var="childlink">
							<c:choose>
								<c:when test="${childlink.url == '/kitchenVendor' && isBlockAddToCart}">
									<li class="yCmsComponent">
										<a class="show_explanation_message disabled" href="#" title="${childlink.linkName}">${childlink.linkName}</a>
									</li>
								</c:when>
								<c:otherwise>
									<cms:component component="${childlink}" evaluateRestriction="true" element="li"/>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</ul>
					
				</c:if>
			</c:forEach>
		</div>

    </c:if>
</li>