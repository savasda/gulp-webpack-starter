<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<section class="product-details">
        <div class="container">
          <div class="row">
            <div class="col-12 col-md-6">
              <product:productImagePanel galleryImages="${galleryImages}" />
            </div>
            <div class="col-12 col-md-6">
              <div class="product-details--descr">
                <ycommerce:testId code="productDetails_productNamePrice_label_${product.code}">
                  <div class="product-details--descr-type">
                    <div class="product-details--descr--code">
                      <span>${product.manufacturer}</span>
                      <div class="code"><spring:theme code="product.view.details.sku"/>${product.displayCode}</div>
                    </div>
                    <h2>${fn:escapeXml(product.name)}</h2>
                  </div>
                </ycommerce:testId>
                <div class="product-details--descr-wishlist">
                  <button class="btn btn-link">
                    <span class="material-icons"> star_border </span>
                    <spring:theme code="product.addwishlist"/>
                  </button>
                </div>
                <div class="product-details--descr-details">
                  ${product.summary}
                </div>
                <strong class="product-details--descr-price">
                 	<%-- <product:productPromotionSection product="${product}"/> --%>
                <ycommerce:testId code="productDetails_productNamePrice_label_${product.code}">
                  <product:productPricePanel product="${product}" />
                </ycommerce:testId>
                </strong>
                <div class="product-details--descr-selector">
                  <product:productVariantSelector product="${product}"/>
                </div>

                <cms:pageSlot position="DeliveryContentSlot" var="component">
                  <cms:component component="${component}" element="div" class="product-details--descr-delivery"/>
                </cms:pageSlot>


                <cms:pageSlot position="AddToCart" var="component" element="div" class="page-details-variants-select">
                  <cms:component component="${component}" element="div" class="yComponentWrapper page-details-add-to-cart-component"/>
                </cms:pageSlot>

              </div>
            </div>
          </div>
        </div>
      </section>

      

      

      <cms:pageSlot position="VariantSelector" var="component" element="div" class="page-details-variants-select">
			  <cms:component component="${component}" element="div" class="yComponentWrapper page-details-variants-select-component"/>
		  </cms:pageSlot>
  



