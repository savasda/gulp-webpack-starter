<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="pdp-view--banner">
    <product:productPrimaryImage product="${product}" format="wideScreen"/>
    <div class="pdp-view--banner-ribon">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6">
                    <div class="ribon-flex-container type">
                        <strong>${product.name}</strong>
                        ${product.description}
                    </div>
                </div>
                <div class="col-12 col-md-6 ribon-buttons">
                    <div class="ribon-flex-container view360">
                        <c:choose>
                            <c:when test="${product.has360View}">
                                <button class="btn btn-link btn-ribon"
                                   data-krpano-modal="/_ui/responsive/base/images/viewpoints/${product.planGuid}">
                                    <i class="material-icons">3d_rotation</i>
                                    360&#176; view
                                </button>
                            </c:when>
                            <c:otherwise>
                                <button  disabled class="btn btn-link btn-ribon">
                                    <i class="material-icons">3d_rotation</i>
                                    360&#176; view
                                </button>
                            </c:otherwise>
                        </c:choose>
                        <button class="btn btn-link btn-ribon">
					<span class="material-icons">
                        <spring:theme code="product.starborder"/>
					</span>
                            <spring:theme code="product.addwishlist"/>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="pano"></div>


