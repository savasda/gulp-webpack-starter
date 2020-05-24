<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="facetData" required="true" type="de.hybris.platform.commerceservices.search.facetdata.FacetData" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<spring:htmlEscape defaultHtmlEscape="true"/>

<c:if test="${not empty facetData.values}">
    <ycommerce:testId code="facetNav_title_${facetData.name}">

        <div class="filter-grid_section">
            <div class="filter">
                <div class="filter_select">
                        <span>
                            <c:choose>
                                <c:when test="${not empty searchPageData.breadcrumbs}"> <%--If breadcrumbs collection is not empty--%>
                                    <c:forEach items="${searchPageData.breadcrumbs}" var="breadcrumb">
                                        <c:set var="filterCount" value="${filterCount + 1}" scope="page"/>
                                        <c:if test="${breadcrumb.facetCode == facetData.code}">
                                            <b class="uppercase">${breadcrumb.facetValueName.replace("_","-")}</b>
                                            <c:set var="selected" value="${true}"/>
                                            <c:set var="currentValue" value="${(breadcrumb.facetValueName)}"/>
                                        </c:if>
                                    </c:forEach>

                                    <c:if test="${!selected}">
                                        <nav:facetValues facetData="${facetData}"/>
                                    </c:if>
                                </c:when>
                                <c:otherwise>
                                    <nav:facetValues facetData="${facetData}"/>
                                </c:otherwise>
                            </c:choose>
                        </span>
                    <span class="filter_arrow material-icons">arrow_drop_down</span>
                </div>
                <div class="filter_dropdown" tabindex="-1">
                    <ul>
                        <c:set var="queryString" value="${requestScope['javax.servlet.forward.query_string']}"/>
                        <c:set var="queryString" value="${fn:replace(queryString, 'q=%3A', '')}"/>
                        <c:set var="urlFacetDataName" value="%3A${facetData.code}%3A"/>
                        <c:set var="queryToRemove" value="${urlFacetDataName}${currentValue}"/>
                        <c:set var="queryToRemove" value="${fn:replace(queryToRemove, ' ', '%20')}"/>
                        <c:set var="newQuery" value="q=%3A${fn:replace(queryString, queryToRemove, '')}"/>
                        <li data-index="0" <c:if test="${!selected}">class="selected"</c:if>>
                            <a href="?${newQuery}">
                                <nav:facetValues facetData="${facetData}"/>
                            </a>
                        </li>
                        <c:forEach items="${facetData.values}" var="facetValue">
                            <c:url value="?${newQuery}${urlFacetDataName}${facetValue.code}" var="facetValueQueryUrl"/>
                            <li data-index="1" <c:if test="${facetValue.code == currentValue}">class="selected"</c:if>>
                                <a <c:if test="${facetValue.code != currentValue}">href="${facetValueQueryUrl}"</c:if>>
                                        ${fn:escapeXml(fn:toLowerCase(facetValue.code)).replace("_","-")}
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <%-- OLD VERSION
                <div class="facet js-facet">
                    <div class="facet__name js-facet-name">
                        <span class="glyphicon facet__arrow"></span>
                        <spring:theme code="search.nav.facetTitle" arguments="${facetData.name}"/>
                    </div>


                    <div class="facet__values js-facet-values js-facet-form">

                        <c:if test="${not empty facetData.topValues}">
                            <ul class="facet__list js-facet-list js-facet-top-values">
                                <c:forEach items="${facetData.topValues}" var="facetValue">
                                    <li>
                                        <c:if test="${facetData.multiSelect}">
                                            <form action="#" method="get">
                                                <!-- facetValue.query.query.value and searchPageData.freeTextSearch are html output encoded in the backend -->
                                                <input type="hidden" name="q" value="${facetValue.query.query.value}"/>
                                                <input type="hidden" name="text" value="${searchPageData.freeTextSearch}"/>
                                                <label>
                                                    <input class="facet__list__checkbox" type="checkbox" ${facetValue.selected ? 'checked="checked"' : ''} class="facet-checkbox" />
                                                    <span class="facet__list__label">
                                                    <span class="facet__list__mark"></span>
                                                    <span class="facet__list__text">
                                                        ${fn:escapeXml(facetValue.name)}
                                                        <ycommerce:testId code="facetNav_count">
                                                            <span class="facet__value__count"><spring:theme code="search.nav.facetValueCount" arguments="${facetValue.count}"/></span>
                                                        </ycommerce:testId>
                                                    </span>
                                                </span>
                                                </label>
                                            </form>
                                        </c:if>
                                        <c:if test="${not facetData.multiSelect}">
                                            <c:url value="${facetValue.query.url}" var="facetValueQueryUrl"/>
                                            <span class="facet__text">
                                        <!-- searchPageData.freeTextSearch is html output encoded in the backend -->
                                            <a href="${fn:escapeXml(facetValueQueryUrl)}&amp;text=${searchPageData.freeTextSearch}">${fn:escapeXml(facetValue.name)}</a>&nbsp;
                                            <ycommerce:testId code="facetNav_count">
                                                <span class="facet__value__count"><spring:theme code="search.nav.facetValueCount" arguments="${facetValue.count}"/></span>
                                            </ycommerce:testId>
                                        </span>
                                        </c:if>
                                    </li>
                                </c:forEach>
                            </ul>
                        </c:if>
                        <ul class="facet__list js-facet-list <c:if test="${not empty facetData.topValues}">facet__list--hidden js-facet-list-hidden</c:if>">
                            <c:forEach items="${facetData.values}" var="facetValue">
                                <li>
                                    <c:if test="${facetData.multiSelect}">
                                        <ycommerce:testId code="facetNav_selectForm">
                                            <form action="#" method="get">
                                                <!-- facetValue.query.query.value and searchPageData.freeTextSearch are html output encoded in the backend -->
                                                <input type="hidden" name="q" value="${facetValue.query.query.value}"/>
                                                <input type="hidden" name="text" value="${searchPageData.freeTextSearch}"/>
                                                <label>
                                                    <input type="checkbox" ${facetValue.selected ? 'checked="checked"' : ''}  class="facet__list__checkbox js-facet-checkbox sr-only" />
                                                    <span class="facet__list__label">
                                                <span class="facet__list__mark"></span>
                                                <span class="facet__list__text">
                                                    ${fn:escapeXml(facetValue.name)}&nbsp;
                                                    <ycommerce:testId code="facetNav_count">
                                                        <span class="facet__value__count"><spring:theme code="search.nav.facetValueCount" arguments="${facetValue.count}"/></span>
                                                    </ycommerce:testId>
                                                </span>
                                            </span>
                                                </label>
                                            </form>
                                        </ycommerce:testId>
                                    </c:if>
                                    <c:if test="${not facetData.multiSelect}">
                                        <c:url value="${facetValue.query.url}" var="facetValueQueryUrl"/>
                                        <span class="facet__text">
                                        <a href="${fn:escapeXml(facetValueQueryUrl)}">${fn:escapeXml(facetValue.name)}</a>
                                        <ycommerce:testId code="facetNav_count">
                                            <span class="facet__value__count"><spring:theme code="search.nav.facetValueCount" arguments="${facetValue.count}"/></span>
                                        </ycommerce:testId>
                                    </span>
                                    </c:if>
                                </li>
                            </c:forEach>
                        </ul>

                        <c:if test="${not empty facetData.topValues}">
                        <span class="facet__values__more js-more-facet-values">
                            <a href="#" class="js-more-facet-values-link" ><spring:theme code="search.nav.facetShowMore_${facetData.code}" /></a>
                        </span>
                            <span class="facet__values__less js-less-facet-values">
                            <a href="#" class="js-less-facet-values-link"><spring:theme code="search.nav.facetShowLess_${facetData.code}" /></a>
                        </span>
                        </c:if>
                    </div>
                </div>
                --%>
    </ycommerce:testId>
</c:if>
