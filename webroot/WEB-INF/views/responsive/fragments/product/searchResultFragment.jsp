<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="storepickup" tagdir="/WEB-INF/tags/responsive/storepickup" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/responsive/nav" %>

<spring:htmlEscape defaultHtmlEscape="true"/>

<c:forEach items="${searchPageData.results}" var="product" varStatus="status">
    <product:productListerItem product="${product}"/>
</c:forEach>
<nav:loadMore searchUrl="${searchPageData.currentQuery.url}" pagination="${searchPageData.pagination}"/>
