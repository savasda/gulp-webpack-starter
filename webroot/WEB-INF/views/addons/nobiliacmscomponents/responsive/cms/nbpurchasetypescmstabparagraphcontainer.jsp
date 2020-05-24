<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>

<div class="container pdp-view--tabs">
    <div class="customise-wrapper">
            <c:forEach var="component" items="${simpleCMSComponents}">
                <cms:component component="${component}" />
            </c:forEach>
    </div>
</div>



