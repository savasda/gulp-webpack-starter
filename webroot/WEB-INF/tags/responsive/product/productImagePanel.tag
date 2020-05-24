<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="galleryImages" required="true" type="java.util.List" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>

<spring:htmlEscape defaultHtmlEscape="true" />

<div class="swiper-product-carusel">
    <c:choose>
    <c:when test="${galleryImages == null || galleryImages.size() == 0}">
        <div class="swiper-product-carusel--flex">
            <spring:theme code="img.missingProductImage.responsive.product" var="imagePath" htmlEscape="false"/>
            <c:choose>
                <c:when test="${originalContextPath ne null}">
                    <c:choose>
                        <c:when test='${fn:startsWith(imagePath, originalContextPath)}'>	
                            <c:url value="${imagePath}" var="imageUrl" context="/"/>
                        </c:when>
                        <c:otherwise>
                            <c:url value="${imagePath}" var="imageUrl" context="${originalContextPath}"/>
                        </c:otherwise>
                    </c:choose>
                </c:when>
                <c:otherwise>
                    <c:url value="${imagePath}" var="imageUrl" />
                </c:otherwise>
            </c:choose>
            <img style="max-width: 100%; max-height: 100%" src="${fn:escapeXml(imageUrl)}"/>
        </div>
    </c:when>
    <c:otherwise>
        <div class="swiper-product-carusel--flex">
            <div class="swiper-product-carusel--flex--left">
                <div class="swiper-container gallery-thumbs">
                    <c:if test="${galleryImages.size() gt 1}">
                        <div class="swiper-wrapper">
                            <c:forEach items="${galleryImages}" var="container" varStatus="varStatus">
                                <div class="swiper-slide" style="background-image:url(${fn:escapeXml(container.thumbnail.url)})"></div>
                            </c:forEach>
                        </div>
                    </c:if>
                </div>
            </div>
            <div class="swiper-product-carusel--flex--right"><product:productGalleryThumbnail galleryImages="${galleryImages}" /></div>
        </div>
    </c:otherwise>
        </c:choose>
</div>








