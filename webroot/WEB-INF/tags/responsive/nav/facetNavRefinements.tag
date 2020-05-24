<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="pageData" required="true" type="de.hybris.platform.commerceservices.search.facetdata.FacetSearchPageData" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/responsive/nav" %>


<section class="kuchen-list--filter">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <form id="filterForm">
                    <div class="filter-grid">
                        <div class="filter-grid_section filter-grid_head">
                            <a href="?">
                                <spring:theme code="search.nav.filteredItems" arguments="${searchPageData.pagination.totalNumberOfResults}"/>
                                <i class="material-icons">
                                    close
                                </i>
                            </a>
                        </div>
                        <c:forEach items="${pageData.facets}" var="facet">
                            <nav:facetNavRefinementFacet facetData="${facet}"/>
                        </c:forEach>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>


<%-- OLD VERSION

<c:forEach items="${pageData.facets}" var="facet">
	<c:choose>
		<c:when test="${facet.code eq 'availableInStores'}">
			<nav:facetNavRefinementStoresFacet facetData="${facet}" userLocation="${userLocation}"/>
		</c:when>
		<c:otherwise>
			<nav:facetNavRefinementFacet facetData="${facet}"/>
		</c:otherwise>
	</c:choose>
</c:forEach>
--%>
