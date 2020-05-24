<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="tabs">
    <div class="tab">
        <div class="tab-text">
            <strong>${title}</strong>
            <p><spring:theme code="text.kitchen.tabs.customize.title"/></p>
        </div>
        <div class="tab-icon">
            <div class="tab-icon--delivery">
				<span class="material-icons">
					local_shipping
				</span>
                <spring:theme code="text.kitchen.tabs.customize.term"/>
            </div>
        </div>
    </div>
</div>

<div class="tab_content">
    <div class="tab_item"><p>
            ${description}
    </p>
        <div class="tab_item--remote">
            <div>
                <strong>
                    <spring:theme code="text.kitchen.tabs.customize.price"/>
                </strong>
                <spring:theme code="text.kitchen.tabs.customize.start"/>
            </div>
            <button class="btn btn-primary" disabled="true">
                <spring:theme code="text.kitchen.tabs.customize.button"/>
            </button>
        </div>
    </div>
</div>



