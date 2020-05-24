<%@ attribute name="searchUrl" required="true" %>
<%@ attribute name="pagination" required="true"
              type="de.hybris.platform.commerceservices.search.pagedata.PaginationData" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="showMoreAttr" value="?showMore=true"/>

<c:if test="${pagination.numberOfPages-(pagination.currentPage + 1)  gt 0}">
    <button data-next-page="${pagination.currentPage + 1}" data-url="${searchUrl}${showMoreAttr}"
            class="load-more btn btn-primary show-more_js">
        <span class="material-icons">rotate_right</span>
        <spring:theme code="product.listing.showmore"/>
    </button>
</c:if>


