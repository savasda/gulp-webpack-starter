<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>

<template:page pageTitle="${pageTitle}">

    <div class="row">
        <cms:pageSlot position="Section1" var="feature" element="div" class="product-list-section1-slot">
            <cms:component component="${feature}" element="div"
                           class="col-xs-12 yComponentWrapper product-list-section1-component"/>
        </cms:pageSlot>
    </div>

    <cms:pageSlot position="TopBannerSlot" var="comp" element="div" class="product-list-top-banner-slop">
        <cms:component component="${comp}" element="div" class="product-list-top-banner-component" />
    </cms:pageSlot>

    <div class="col-xs-3">
        <cms:pageSlot position="ProductLeftRefinements" var="feature" element="div"
                      class="product-list-left-refinements-slot">
            <cms:component component="${feature}" element="div"
                           class="yComponentWrapper product-list-left-refinements-component"/>
        </cms:pageSlot>
    </div>

    <section class="kuchen-list--crumbs">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="kuchen-list--crumbs-container">
                        <span class="left-side">Applied filters:</span>
                        <div class="kuchen-list--crumbs-list">
                            <div class="kuchen-crumb">
                                <span>404 - 3,420 </span>
                                <button class="btn btn-link">
                                    <i class="material-icons">close</i>
                                </button>
                            </div>

                            <div class="kuchen-crumb">
                                <span>404 - 3,420 </span>
                                <button class="btn btn-link">
                                    <i class="material-icons">close</i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="kuchen-list--filter">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form id="filterForm">
                        <div class="filter-grid">
                            <div class="filter-grid_section filter-grid_head">
                                <a href="?">
                                    Filter (23)
                                    <i class="material-icons">
                                        close
                                    </i>
                                </a>
                            </div>
                            <div class="filter-grid_section">
                                <div class="filter">
                                    <div class="filter_select">
                        <span>
                          <b class="uppercase">Island</b>
                        </span>
                                        <span class="filter_arrow material-icons">arrow_drop_down</span>
                                    </div>
                                    <div class="filter_dropdown" tabindex="-1">
                                        <ul>
                                            <li data-index="0">
                                                <a href="?q=%3A%3Aprogram%3AStructura">
                                                    All shape
                                                </a>
                                            </li>
                                            <li data-index="1" class="selected">
                                                <a> island</a>
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Aprogram%3AStructura%3Ashape%3AL">
                                                    l</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Aprogram%3AStructura%3Ashape%3AU">
                                                    u</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Aprogram%3AStructura%3Ashape%3AParallel"
                                                >
                                                    parallel</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Aprogram%3AStructura%3Ashape%3Al">
                                                    l</a
                                                >
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="filter-grid_section">
                                <div class="filter">
                                    <div class="filter_select">
                        <span>
                          <b class="uppercase">Structura</b>
                        </span>
                                        <span class="filter_arrow material-icons">arrow_drop_down</span>
                                    </div>
                                    <div class="filter_dropdown" tabindex="-1">
                                        <ul>
                                            <li data-index="0">
                                                <a href="?q=%3A%3Ashape%3AIsland">
                                                    All program
                                                </a>
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Ashape%3AIsland%3Aprogram%3ATouch">
                                                    touch</a
                                                >
                                            </li>
                                            <li data-index="1" class="selected">
                                                <a> structura</a>
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Ashape%3AIsland%3Aprogram%3ARiva">
                                                    riva</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AFocus">
                                                    focus</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Ashape%3AIsland%3Aprogram%3ALaser">
                                                    laser</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AFashion"
                                                >
                                                    fashion</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Ashape%3AIsland%3Aprogram%3ASylt">
                                                    sylt</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AChalet"
                                                >
                                                    chalet</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Ashape%3AIsland%3Aprogram%3ACredo">
                                                    credo</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Ashape%3AIsland%3Aprogram%3ASpeed">
                                                    speed</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Ashape%3AIsland%3Aprogram%3ARio">
                                                    rio</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Ashape%3AIsland%3Aprogram%3ALux">
                                                    lux</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a href="?q=%3A%3Ashape%3AIsland%3Aprogram%3APura">
                                                    pura</a
                                                >
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="filter-grid_section">
                                <div class="filter">
                                    <div class="filter_select">
                        <span>
                          All styles
                        </span>
                                        <span class="filter_arrow material-icons">arrow_drop_down</span>
                                    </div>
                                    <div class="filter_dropdown" tabindex="-1">
                                        <ul>
                                            <li data-index="0" class="selected">
                                                <a href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura">All styles</a>
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3AkitchenStyle%3AModern"
                                                >
                                                    modern</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3AkitchenStyle%3ARustic / Country house"
                                                >
                                                    rustic / country house</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3AkitchenStyle%3ATraditional / Classical"
                                                >
                                                    traditional / classical</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3AkitchenStyle%3AMediterran"
                                                >
                                                    mediterran</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3AkitchenStyle%3AColonial"
                                                >
                                                    colonial</a
                                                >
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="filter-grid_section">
                                <div class="filter">
                                    <div class="filter_select">
                        <span>
                          All front types
                        </span>
                                        <span class="filter_arrow material-icons">arrow_drop_down</span>
                                    </div>
                                    <div class="filter_dropdown" tabindex="-1">
                                        <ul>
                                            <li data-index="0" class="selected">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura"
                                                >
                                                    All front types
                                                </a>
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3AfrontType%3AMETAL_HANDLE"
                                                >
                                                    metal-handle</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3AfrontType%3AHANDLE_LESS"
                                                >
                                                    handle-less</a
                                                >
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="filter-grid_section">
                                <div class="filter">
                                    <div class="filter_select">
                        <span>
                          All finishes
                        </span>
                                        <span class="filter_arrow material-icons">arrow_drop_down</span>
                                    </div>
                                    <div class="filter_dropdown" tabindex="-1">
                                        <ul>
                                            <li data-index="0" class="selected">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura"
                                                >
                                                    All finishes
                                                </a>
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3Afinish%3AMATT"
                                                >
                                                    matt</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3Afinish%3AHIGH_GLOSS"
                                                >
                                                    high-gloss</a
                                                >
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="filter-grid_section">
                                <div class="filter">
                                    <div class="filter_select">
                        <span>
                          All door types
                        </span>
                                        <span class="filter_arrow material-icons">arrow_drop_down</span>
                                    </div>
                                    <div class="filter_dropdown" tabindex="-1">
                                        <ul>
                                            <li data-index="0" class="selected">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura"
                                                >
                                                    All door types
                                                </a>
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3AdoorType%3AFLAT"
                                                >
                                                    flat</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3AdoorType%3ASHAKER"
                                                >
                                                    shaker</a
                                                >
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="filter-grid_section">
                                <div class="filter">
                                    <div class="filter_select">
                        <span>
                          All colour
                        </span>
                                        <span class="filter_arrow material-icons">arrow_drop_down</span>
                                    </div>
                                    <div class="filter_dropdown" tabindex="-1">
                                        <ul>
                                            <li data-index="0" class="selected">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura"
                                                >
                                                    All colour
                                                </a>
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3Acolour%3ADARK"
                                                >
                                                    dark</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3Acolour%3AMEDIUM"
                                                >
                                                    medium</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3Acolour%3ALIGHT"
                                                >
                                                    light</a
                                                >
                                            </li>
                                            <li data-index="1">
                                                <a
                                                        href="?q=%3A%3Ashape%3AIsland%3Aprogram%3AStructura%3Acolour%3AWOOD"
                                                >
                                                    wood</a
                                                >
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <cms:pageSlot position="ProductListSlot" var="feature">
        <cms:component component="${feature}"/>
    </cms:pageSlot>

</template:page>
