<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<spring:htmlEscape defaultHtmlEscape="true" />

<c:url value="/search/" var="searchUrl" />
<spring:url value="/search/autocomplete/{/componentuid}" var="autocompleteUrl" htmlEscape="false">
     <spring:param name="componentuid"  value="${component.uid}"/>
</spring:url>


 

	<form name="search_form_${fn:escapeXml(component.uid)}" method="get"
		action="${fn:escapeXml(searchUrl)}">
<div class="input-group search-box ">
		<spring:theme code="search.placeholder" var="searchPlaceholderHtml" />

			<ycommerce:testId code="header_search_input">
				<c:set var="optionsJson">
					{
						"autocompleteUrl" : "${ycommerce:encodeJSON(autocompleteUrl)}",
						"minCharactersBeforeRequest" : "${ycommerce:encodeJSON(component.minCharactersBeforeRequest)}",
						"waitTimeBeforeRequest" : "${ycommerce:encodeJSON(component.waitTimeBeforeRequest)}",
						"displayProductImages" : "${ycommerce:encodeJSON(component.displayProductImages)}"
					}
				</c:set>
				<input  id="js-site-search-input"
					type="text"
					class="form-control js-site-search-input"
					aria-label="${searchPlaceholderHtml}"
					name="text" 
					value=""
					maxlength="100" placeholder="${searchPlaceholderHtml}"
					data-options="${fn:escapeXml(optionsJson)}"/>
			</ycommerce:testId>

		 
			<div class="input-group-append">
				<ycommerce:testId code="header_search_button">
					<button type="submit"  type="submit" disabled="true" class="btn btn btn-light js_search_button">
						<svg
						width="20"
						height="19"
						viewBox="0 0 20 19"
						fill="none"
						xmlns="http://www.w3.org/2000/svg"
						>
						<path
							d="M14.2939 11.9497H13.3848L13.0703 11.6509C14.191 10.418 14.8656 8.81561 14.8656 7.06118C14.8656 3.16124 11.538 0 7.43282 0C3.32762 0 0 3.16124 0 7.06118C0 10.9611 3.32762 14.1224 7.43282 14.1224C9.27959 14.1224 10.9663 13.4814 12.2642 12.4222L12.5786 12.721V13.5792L18.2962 19L20 17.3814L14.2939 11.9497ZM7.43282 11.9497C4.5912 11.9497 2.28702 9.76072 2.28702 7.06118C2.28702 4.36164 4.5912 2.17267 7.43282 2.17267C10.2744 2.17267 12.5786 4.36164 12.5786 7.06118C12.5786 9.76072 10.2744 11.9497 7.43282 11.9497Z"
							fill="#828282"
						/>
						</svg>
					</button>
				</ycommerce:testId>
			</div>
</div>
	</form>


