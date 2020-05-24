<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="galleryImages" required="true" type="java.util.List" %>


<!-- Swiper -->
<div class="swiper-container gallery-top">
    <div class="swiper-wrapper">
    <c:forEach items="${galleryImages}" var="container" varStatus="varStatus">
        <div class="swiper-slide" style="background-image:url(${fn:escapeXml(container.thumbnail.url)})"></div>
    </c:forEach>
    </div>    
</div>
    

