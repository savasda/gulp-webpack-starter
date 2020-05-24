<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/responsive/nav" %>

<c:if test="${navigationNode.visible}">
    <div>
        ${navigationNode.title}
    </div>
    <div class="link-list">
        <c:forEach items="${navigationNode.links}" var="link">

            <c:set value="${ requestScope['javax.servlet.forward.servlet_path'] == link.url ? 'active' :'' }"
                   var="selected"/>
            <a href="${link.url}" class="${selected}">${link.name}</a>
        </c:forEach>
    </div>
</c:if>
