<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ attribute name="hideHeaderLinks" required="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/responsive/nav"%>

<spring:htmlEscape defaultHtmlEscape="true" />

<cms:pageSlot position="TopHeaderSlot" var="component" element="div" >
	<cms:component component="${component}" />
</cms:pageSlot>





<div class="mobile-nav">
	<div class="mobile-nav--button">
		<div class="mobile-nav--button-action">
			<span class="material-icons">close</span>
		</div>
	</div>
	<div class="mobile-nav--navigation">
		<div class="mobile-nav--navigation--overflow"><nav:topNavigation /></div>
	</div>
</div>



  <header>
      <div class="container">
        <div class="row flex-row">
          <div class="col-6 col-md-2">
            <div class="header-logo">
              <i class="mobile-hamberger material-icons d-sm-block d-md-none">menu</i>
              <cms:pageSlot position="SiteLogo" var="logo" limit="1">
					<cms:component component="${logo}" element="div" class="yComponentWrapper"/>
				</cms:pageSlot>
            </div>
          </div>
          <div class="col-6 d-none d-md-block col-md-6">
            <div class="search-box--desktop">
              <cms:pageSlot position="SearchBox" var="component">
				<cms:component component="${component}" element="div"/>
				</cms:pageSlot>
            </div>
          </div>
          <div class="col-6 col-md-4">
            <div class="header-controls">
              
			<cms:pageSlot position="MiniCart" var="cart" element="div" class="componentContainer">
				<cms:component component="${cart}" element="div"/>
			</cms:pageSlot>

			
		<c:if test="${empty hideHeaderLinks}">
			<c:if test="${uiExperienceOverride}">
				<li class="backToMobileLink">
					<c:url value="/_s/ui-experience?level=" var="backToMobileStoreUrl" />
					<a href="${fn:escapeXml(backToMobileStoreUrl)}">
						<spring:theme code="text.backToMobileStore" />
					</a>
				</li>
			</c:if>

			<sec:authorize access="!hasAnyRole('ROLE_ANONYMOUS')">
				<c:set var="maxNumberChars" value="25" />
				<c:if test="${fn:length(user.firstName) gt maxNumberChars}">
					<c:set target="${user}" property="firstName"
						value="${fn:substring(user.firstName, 0, maxNumberChars)}..." />
				</c:if>

				<li class="logged_in js-logged_in">
					<ycommerce:testId code="header_LoggedUser">
						<spring:theme code="header.welcome" arguments="${user.firstName},${user.lastName}" />
					</ycommerce:testId>
				</li>
			</sec:authorize>

			<cms:pageSlot position="HeaderLinks" var="link">
				<cms:component component="${link}" element="li" />
			</cms:pageSlot>

		
				<sec:authorize access="hasAnyRole('ROLE_ANONYMOUS')" >
					<ycommerce:testId code="header_Login_link">
						<c:url value="/login" var="loginUrl" />
						<a class="header-controls--control" href="${fn:escapeXml(loginUrl)}">
                			<i class="material-icons">account_circle</i>
							<span class="d-none d-md-block"><spring:theme code="header.link.login" /></span>
						</a>
					</ycommerce:testId>
				</sec:authorize>

				<sec:authorize access="!hasAnyRole('ROLE_ANONYMOUS')" >
					<ycommerce:testId code="header_signOut">
						<c:url value="/logout" var="logoutUrl"/>
						<a class="header-controls--control" href="${fn:escapeXml(logoutUrl)}">
                			<i class="material-icons">account_circle</i>
							<span class="d-none d-md-block"><spring:theme code="header.link.logout" /></span>
						</a>
					</ycommerce:testId>
				</sec:authorize>
		

		</c:if>

   

            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12">

 			<!--search box-->
			<div class="search-box--mobile d-md-none">
				<cms:pageSlot position="SearchBox" var="component">
					<cms:component component="${component}" element="div"/>
				</cms:pageSlot>
			</div>
            <!--End search box-->

            <nav class="header--nav d-none d-sm-none d-md-block">
              <nav:topNavigation />
            </nav>
          </div>
        </div>
      </div>
    </header>

