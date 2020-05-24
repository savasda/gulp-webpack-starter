<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="footer" tagdir="/WEB-INF/tags/responsive/common/footer"  %>

<%-- <div class="container">
    <div class="footer__top">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-9"> --%>
                <%-- <c:forEach items="${navigationNodes}" var="node">
                        <c:if test="${node.visible}">
                            <c:forEach items="${node.links}" step="${component.wrapAfter}"
                                       varStatus="i">

                                <div class="footer__nav--container col-xs-12 col-sm-3">
                                    <c:if test="${component.wrapAfter > i.index}">
                                        <div class="title">${fn:escapeXml(node.title)}</div>
                                    </c:if>
                                    <ul>
                                        <c:forEach items="${node.links}" var="childlink"
                                                   begin="${i.index}" end="${i.index + component.wrapAfter - 1}">
                                            <cms:component component="${childlink}" evaluateRestriction="true" element="li"/>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </c:forEach>
                        </c:if>
                    </c:forEach> --%>
            <%-- </div>
            <div class="footer__right col-xs-12 col-md-3"> --%>
                <%-- <c:if test="${showLanguageCurrency}">
                    <div class="row">
                        <div class="col-xs-6 col-md-6 footer__dropdown">
                            <footer:languageSelector languages="${languages}"
                                                     currentLanguage="${currentLanguage}" />
                        </div>
                        <div class="col-xs-6 col-md-6 footer__dropdown">
                            <footer:currencySelector currencies="${currencies}"
                                                     currentCurrency="${currentCurrency}" />
                        </div>
                    </div>
                </c:if> --%>
            <%-- </div>
        </div>
    </div>
</div> --%>





<div class="container social">
    <div class="row">
        <div class="col-12 col-md-6">
            <ul class="footer-social">
                <li>
                    <a target="_blank" href="#">
                    <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                    <path d="m437 0h-362c-41.351562 0-75 33.648438-75 75v362c0 41.351562 33.648438 75 75 75h362c41.351562 0 75-33.648438 75-75v-362c0-41.351562-33.648438-75-75-75zm-180 390c-74.441406 0-135-60.558594-135-135s60.558594-135 135-135 135 60.558594 135 135-60.558594 135-135 135zm150-240c-24.8125 0-45-20.1875-45-45s20.1875-45 45-45 45 20.1875 45 45-20.1875 45-45 45zm0 0"/><path d="m407 90c-8.277344 0-15 6.722656-15 15s6.722656 15 15 15 15-6.722656 15-15-6.722656-15-15-15zm0 0"/><path d="m257 150c-57.890625 0-105 47.109375-105 105s47.109375 105 105 105 105-47.109375 105-105-47.109375-105-105-105zm0 0"/></svg>                    </a>
                </li>
                <li><a target="_blank" href="#">
                <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                    <path d="m437 0h-362c-41.351562 0-75 33.648438-75 75v362c0 41.351562 33.648438 75 75 75h362c41.351562 0 75-33.648438 75-75v-362c0-41.351562-33.648438-75-75-75zm-256 406h-60v-210h60zm0-240h-60v-60h60zm210 240h-60v-120c0-16.539062-13.460938-30-30-30s-30 13.460938-30 30v120h-60v-210h60v11.308594c15.71875-4.886719 25.929688-11.308594 45-11.308594 40.691406.042969 75 36.546875 75 79.6875zm0 0"/></svg>
                </a></li>
                <li><a target="_blank" href="#">
                <svg viewBox="-62 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="m60.945312 278.21875c.640626-1.597656 7.050782-26.230469 7.5-27.898438-10.007812-15.058593-21.125-64.371093-12.597656-104.398437 9.199219-58.730469 71.4375-87.601563 130.199219-87.601563v-.109374c73.570313.046874 128.640625 40.980468 128.699219 111.476562.046875 55.179688-33.195313 128.117188-89.957032 128.117188-.015624 0-.027343 0-.042968 0-20.257813 0-45.90625-9.1875-52.632813-18.210938-7.761719-10.398438-9.667969-23.230469-5.566406-36.941406 10.050781-32.082032 22.867187-70.511719 24.363281-96.136719 1.386719-24.183594-15.773437-39.917969-38.027344-39.917969-16.746093 0-38.496093 9.726563-49.335937 37.058594-8.953125 22.707031-8.761719 46.480469.585937 72.671875 3.644532 10.238281-16.15625 76.984375-22.5 98.71875-15.761718 53.992187-37.339843 122.304687-32.726562 160.347656l4.453125 36.605469 22.367187-29.3125c30.953126-40.519531 62.957032-145.332031 71.484376-170.835938 25.210937 32.648438 77.710937 33.585938 83.832031 33.585938 75.183593 0 160.4375-74.65625 158.019531-178.5625-2.121094-91.121094-68.808594-166.875-188.632812-166.875v.117188c-113.976563 0-180.5 60.835937-196.785157 137.703124-14.914062 71.273438 18.253907 125.519532 57.300781 140.398438zm0 0"/></svg>
                </a></li>
                <li><a target="_blank" href="#">
                <svg viewBox="0 -47 512.00203 512" xmlns="http://www.w3.org/2000/svg"><path d="m191.011719 419.042969c-22.140625 0-44.929688-1.792969-67.855469-5.386719-40.378906-6.335938-81.253906-27.457031-92.820312-33.78125l-30.335938-16.585938 32.84375-10.800781c35.902344-11.804687 57.742188-19.128906 84.777344-30.597656-27.070313-13.109375-47.933594-36.691406-57.976563-67.175781l-7.640625-23.195313 6.265625.957031c-5.941406-5.988281-10.632812-12.066406-14.269531-17.59375-12.933594-19.644531-19.78125-43.648437-18.324219-64.21875l1.4375-20.246093 12.121094 4.695312c-5.113281-9.65625-8.808594-19.96875-10.980469-30.777343-5.292968-26.359376-.863281-54.363282 12.476563-78.851563l10.558593-19.382813 14.121094 16.960938c44.660156 53.648438 101.226563 85.472656 168.363282 94.789062-2.742188-18.902343-.6875-37.144531 6.113281-53.496093 7.917969-19.039063 22.003906-35.183594 40.722656-46.691407 20.789063-12.777343 46-18.96875 70.988281-17.433593 26.511719 1.628906 50.582032 11.5625 69.699219 28.746093 9.335937-2.425781 16.214844-5.015624 25.511719-8.515624 5.59375-2.105469 11.9375-4.496094 19.875-7.230469l29.25-10.078125-19.074219 54.476562c1.257813-.105468 2.554687-.195312 3.910156-.253906l31.234375-1.414062-18.460937 25.230468c-1.058594 1.445313-1.328125 1.855469-1.703125 2.421875-1.488282 2.242188-3.339844 5.03125-28.679688 38.867188-6.34375 8.472656-9.511718 19.507812-8.921875 31.078125 2.246094 43.96875-3.148437 83.75-16.042969 118.234375-12.195312 32.625-31.09375 60.617187-56.164062 83.199219-31.023438 27.9375-70.582031 47.066406-117.582031 56.847656-23.054688 4.796875-47.8125 7.203125-73.4375 7.203125zm0 0"/></svg></a></li>
            </ul>
        </div>
        <div class="col-12 col-md-6">
            <ul class="footer-top-nav">
                <li><a href="#" traget="_blank">About Us</a></li>
                <li><a href="#" traget="_blank">Franchise</a></li>
                <li><a href="#" traget="_blank">Jobs</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="footer-bottom">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <ul class="footer-bottom--links">
                    <c:forEach items="${navigationNodes}" var="node">
                        <c:if test="${node.visible}">
                            <c:forEach items="${node.links}" step="${component.wrapAfter}"
                                varStatus="i">
                                <c:forEach items="${node.links}" var="childlink"
                                            begin="${i.index}" end="${i.index + component.wrapAfter - 1}">
                                    <cms:component component="${childlink}" evaluateRestriction="true" element="li"/>
                                </c:forEach>
                            </c:forEach>
                        </c:if>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>

    <div class="container footer-copyright">
        <div class="row">
            <div class="col-12">
                <p>${fn:escapeXml(notice)}</p>
            </div>
        </div>
    </div>

</div>
