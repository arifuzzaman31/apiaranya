<template>
    <div class="layout-px-spacing" v-if="loaded">
        <div class="dashboard-title">
            <a href="javascript:void(0);" id="tb_1" class="tabmenu"
                >Dashboard</a
            >
        </div>
        <div class="dashboard-sub-title">
            <a href="javascript:void(0);" id="tb_1" class="tabmenu"
                >Whole data about your business here</a
            >
        </div>
        <div class="row mt-3" style="display: flex; row-gap: 20px">
            <div class="col-md-3 rounded">
                <div class="card" style="border-radius: 8px">
                    <!-- <img class="card-img-top" src="" alt="Card image cap" /> -->
                    <div
                        class="card-body d-flex align-items-center"
                        style="
                            height: 100vh;
                            max-height: 143px;
                            column-gap: 20px;
                        "
                    >
                        <div>
                            <span
                                class="rounded-circle"
                                style="
                                    padding: 1rem 0.9rem !important;
                                    background-color: rgb(60 86 118 / 39%);
                                "
                            >
                                <!-- <i
                                    class="icons icon icon-sm rounded-circle"
                                    style="
                                        background-color: rgb(60 86 118);
                                        color: #fff;
                                        padding: 4px;
                                    "
                                >
                                  <svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="20"
                                        height="20"
                                        fill="none"
                                        viewBox="0 0 24 24"
                                        stroke-width="1.5"
                                        stroke="currentColor"
                                        class="w-6 h-6"
                                    >
                                        <path
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            d="M21 7.5V18M15 7.5V18M3 16.811V8.69c0-.864.933-1.406 1.683-.977l7.108 4.061a1.125 1.125 0 0 1 0 1.954l-7.108 4.061A1.125 1.125 0 0 1 3 16.811Z"
                                        />
                                    </svg>
                                       </i>-->

                                <svg
                                    width="20"
                                    height="20"
                                    viewBox="0 0 20 20"
                                    fill="none"
                                    xmlns="http://www.w3.org/2000/svg"
                                >
                                    <path
                                        d="M9.1 17H10.85V15.75C11.6833 15.6 12.4 15.275 13 14.775C13.6 14.275 13.9 13.5333 13.9 12.55C13.9 11.85 13.7 11.2083 13.3 10.625C12.9 10.0417 12.1 9.53333 10.9 9.1C9.9 8.76667 9.20833 8.475 8.825 8.225C8.44167 7.975 8.25 7.63333 8.25 7.2C8.25 6.76667 8.40417 6.425 8.7125 6.175C9.02083 5.925 9.46667 5.8 10.05 5.8C10.5833 5.8 11 5.92917 11.3 6.1875C11.6 6.44583 11.8167 6.76667 11.95 7.15L13.55 6.5C13.3667 5.91667 13.0292 5.40833 12.5375 4.975C12.0458 4.54167 11.5 4.3 10.9 4.25V3H9.15V4.25C8.31667 4.43333 7.66667 4.8 7.2 5.35C6.73333 5.9 6.5 6.51667 6.5 7.2C6.5 7.98333 6.72917 8.61667 7.1875 9.1C7.64583 9.58333 8.36667 10 9.35 10.35C10.4 10.7333 11.1292 11.075 11.5375 11.375C11.9458 11.675 12.15 12.0667 12.15 12.55C12.15 13.1 11.9542 13.5042 11.5625 13.7625C11.1708 14.0208 10.7 14.15 10.15 14.15C9.6 14.15 9.1125 13.9792 8.6875 13.6375C8.2625 13.2958 7.95 12.7833 7.75 12.1L6.1 12.75C6.33333 13.55 6.69583 14.1958 7.1875 14.6875C7.67917 15.1792 8.31667 15.5167 9.1 15.7V17ZM10 20C8.61667 20 7.31667 19.7375 6.1 19.2125C4.88333 18.6875 3.825 17.975 2.925 17.075C2.025 16.175 1.3125 15.1167 0.7875 13.9C0.2625 12.6833 0 11.3833 0 10C0 8.61667 0.2625 7.31667 0.7875 6.1C1.3125 4.88333 2.025 3.825 2.925 2.925C3.825 2.025 4.88333 1.3125 6.1 0.7875C7.31667 0.2625 8.61667 0 10 0C11.3833 0 12.6833 0.2625 13.9 0.7875C15.1167 1.3125 16.175 2.025 17.075 2.925C17.975 3.825 18.6875 4.88333 19.2125 6.1C19.7375 7.31667 20 8.61667 20 10C20 11.3833 19.7375 12.6833 19.2125 13.9C18.6875 15.1167 17.975 16.175 17.075 17.075C16.175 17.975 15.1167 18.6875 13.9 19.2125C12.6833 19.7375 11.3833 20 10 20Z"
                                        fill="#3C5676"
                                    />
                                </svg>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title text-bold">
                                Revenue
                            </h6>
                            <span>{{
                                Number(order_info.pending) +
                                Number(order_info.processing) +
                                Number(order_info.delivered)
                            }}</span>
                            <br />
                            <span class="text-sm countitem">
                                Shipping fees are not included
                            </span>
                        </div>

                        <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    </div>
                </div>
            </div>

            <div class="col-md-3 rounded">
                <div class="card" style="border-radius: 8px">
                    <!-- <img class="card-img-top" src="" alt="Card image cap" /> -->
                    <div
                        class="card-body d-flex align-items-center"
                        style="
                            height: 100vh;
                            max-height: 143px;
                            column-gap: 20px;
                        "
                    >
                        <div>
                            <span
                                class="rounded-circle"
                                style="
                                    padding: 1rem 0.69rem !important;
                                    background-color: #ccf0d1;
                                "
                            >
                                <svg
                                    width="24"
                                    height="24"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    xmlns="http://www.w3.org/2000/svg"
                                >
                                    <g clip-path="url(#clip0_29_2)">
                                        <path
                                            d="M20 8H17V4H3C1.9 4 1 4.9 1 6V17H3C3 18.66 4.34 20 6 20C7.66 20 9 18.66 9 17H15C15 18.66 16.34 20 18 20C19.66 20 21 18.66 21 17H23V12L20 8ZM6 18.5C5.17 18.5 4.5 17.83 4.5 17C4.5 16.17 5.17 15.5 6 15.5C6.83 15.5 7.5 16.17 7.5 17C7.5 17.83 6.83 18.5 6 18.5ZM19.5 9.5L21.46 12H17V9.5H19.5ZM18 18.5C17.17 18.5 16.5 17.83 16.5 17C16.5 16.17 17.17 15.5 18 15.5C18.83 15.5 19.5 16.17 19.5 17C19.5 17.83 18.83 18.5 18 18.5Z"
                                            fill="#00B517"
                                        />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_29_2">
                                            <rect
                                                width="24"
                                                height="24"
                                                fill="white"
                                            />
                                        </clipPath>
                                    </defs>
                                </svg>

                                <!--  <i
                                    class="icons icon icon-sm rounded-circle"
                                    style="
                                        background-color: rgb(60 86 118);
                                        color: #fff;
                                        padding: 4px;
                                    "
                                >
                                
                                   <svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="20"
                                        height="20"
                                        fill="none"
                                        viewBox="0 0 24 24"
                                        stroke-width="1.5"
                                        stroke="currentColor"
                                        class="w-6 h-6"
                                    >
                                        <path
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            d="M8 12a4 4 0 1 1 1.354 3M8 12l2.5-1M8 12l-1.5-2M21 12a9 9 0 1 1-18 0a9 9 0 0 1 18 0"
                                        />
                                    </svg> 
                                </i>-->
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title text-bold">
                                Orders
                            </h6>
                            <span>{{ order_info.pending }}</span> <br />
                            <span class="text-sm">
                                Excluding orders in transit
                            </span>
                        </div>

                        <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    </div>
                </div>
            </div>
            <div class="col-md-3 rounded">
                <div class="card" style="border-radius: 8px">
                    <!-- <img class="card-img-top" src="" alt="Card image cap" /> -->
                    <div
                        class="card-body d-flex align-items-center"
                        style="
                            height: 100vh;
                            max-height: 143px;
                            column-gap: 20px;
                        "
                    >
                        <div>
                            <span
                                class="rounded-circle"
                                style="
                                    padding: 1rem 0.69rem !important;
                                    background-color: #ffe8d0;
                                "
                            >
                                <svg
                                    width="24"
                                    height="24"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    xmlns="http://www.w3.org/2000/svg"
                                >
                                    <g clip-path="url(#clip0_31_5)">
                                        <path
                                            d="M3 11H11V3H3V11ZM5 5H9V9H5V5Z"
                                            fill="#FD8A14"
                                        />
                                        <path
                                            d="M3 21H11V13H3V21ZM5 15H9V19H5V15Z"
                                            fill="#FD8A14"
                                        />
                                        <path
                                            d="M13 3V11H21V3H13ZM19 9H15V5H19V9Z"
                                            fill="#FD8A14"
                                        />
                                        <path
                                            d="M21 19H19V21H21V19Z"
                                            fill="#FD8A14"
                                        />
                                        <path
                                            d="M15 13H13V15H15V13Z"
                                            fill="#FD8A14"
                                        />
                                        <path
                                            d="M17 15H15V17H17V15Z"
                                            fill="#FD8A14"
                                        />
                                        <path
                                            d="M15 17H13V19H15V17Z"
                                            fill="#FD8A14"
                                        />
                                        <path
                                            d="M17 19H15V21H17V19Z"
                                            fill="#FD8A14"
                                        />
                                        <path
                                            d="M19 17H17V19H19V17Z"
                                            fill="#FD8A14"
                                        />
                                        <path
                                            d="M19 13H17V15H19V13Z"
                                            fill="#FD8A14"
                                        />
                                        <path
                                            d="M21 15H19V17H21V15Z"
                                            fill="#FD8A14"
                                        />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_31_5">
                                            <rect
                                                width="24"
                                                height="24"
                                                fill="white"
                                            />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title text-bold">
                                Products
                            </h6>
                            <span>{{ order_info.processing }}</span> <br />
                            <span class="text-sm">
                                In 19 Categories
                            </span>
                        </div>

                        <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    </div>
                </div>
            </div>
            <div class="col-md-3 rounded">
                <div class="card" style="border-radius: 8px">
                    <!-- <img class="card-img-top" src="" alt="Card image cap" /> -->
                    <div
                        class="card-body d-flex align-items-center"
                        style="
                            height: 100vh;
                            max-height: 143px;
                            column-gap: 20px;
                        "
                    >
                        <div>
                            <span
                                class="rounded-circle"
                                style="
                                    padding: 1rem 0.69rem !important;
                                    background-color: #cff4e8;
                                "
                            >
                                <svg
                                    width="22"
                                    height="19"
                                    viewBox="0 0 22 19"
                                    fill="none"
                                    xmlns="http://www.w3.org/2000/svg"
                                >
                                    <path
                                        d="M16.21 7.00002L11.83 0.44002C11.64 0.16002 11.32 0.0200195 11 0.0200195C10.68 0.0200195 10.36 0.16002 10.17 0.45002L5.79 7.00002H1C0.45 7.00002 0 7.45002 0 8.00002C0 8.09002 0.00999996 8.18002 0.04 8.27002L2.58 17.54C2.81 18.38 3.58 19 4.5 19H17.5C18.42 19 19.19 18.38 19.43 17.54L21.97 8.27002L22 8.00002C22 7.45002 21.55 7.00002 21 7.00002H16.21ZM8 7.00002L11 2.60002L14 7.00002H8ZM11 15C9.9 15 9 14.1 9 13C9 11.9 9.9 11 11 11C12.1 11 13 11.9 13 13C13 14.1 12.1 15 11 15Z"
                                        fill="#0DCAF0"
                                    />
                                </svg>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title text-bold">
                               Monthly Earning
                            </h6>
                            <span>{{ order_info.delivered }}</span> <br />
                            <span class="text-sm">
                               Based in your local time.
                            </span>
                        </div>

                        <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="row sales layout-top-spacing">
            <div
                class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing"
            >
                <div class="widget widget-chart-one-dashboard">
                    <div class="widget-heading-dashboard">
                        <ul class="tabs tab-pills">
                            <li>
                                <a
                                    href="javascript:void(0);"
                                    id="tb_1"
                                    class="tabmenu"
                                    >Total Earning</a
                                >
                            </li>
                        </ul>
                    </div>

                    <div class="widget-content">
                        <div class="tabs tab-content">
                            <div id="content_1" class="tabcontent">
                                <total-earning
                                    :totalEarning="totalEarning"
                                    height="303"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div
                class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing"
            >
                <div class="widget widget-chart-one-dashboard">
                    <div class="widget-heading-dashboard">
                        <ul class="tabs tab-pills">
                            <li>
                                <a
                                    href="javascript:void(0);"
                                    id="tb_2"
                                    class="tabmenu"
                                    >Sales by Category</a
                                >
                            </li>
                        </ul>
                    </div>
                    <div class="widget-content">
                        <top-product :doughtData="doughtData" />
                    </div>
                </div>
            </div>

            <div
                class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing"
            >
                <div class="widget widget-chart-one-dashboard">
                    <div class="widget-heading-dashboard">
                        <ul class="tabs tab-pills">
                            <li>
                                <a
                                    href="javascript:void(0);"
                                    id="tb_1"
                                    class="tabmenu"
                                    >Current Year Customer</a
                                >
                            </li>
                        </ul>
                    </div>

                    <div class="widget-content">
                        <div class="tabs tab-content">
                            <div id="content_1" class="tabcontent">
                                <customer-of-month :chartData="chartData" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div
                class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing"
            >
                <div class="widget widget-chart-one-dashboard">
                    <div class="widget-heading-dashboard">
                        <ul class="tabs tab-pills">
                            <li>
                                <a
                                    href="javascript:void(0);"
                                    id="tb_1"
                                    class="tabmenu"
                                    >Sales Of Month</a
                                >
                            </li>
                        </ul>
                    </div>

                    <div class="widget-content">
                        <div class="tabs tab-content">
                            <div id="content_1" class="tabcontent">
                                <sales-of-month
                                    :totalEarning="totalSaleMonth"
                                    height="358"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div
                class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing"
            >
                <div class="widget widget-chart-one-dashboard">
                    <div class="widget-heading-dashboard">
                        <ul class="tabs tab-pills">
                            <li>
                                <a
                                    href="javascript:void(0);"
                                    id="tb_1"
                                    class="tabmenu"
                                    >New Members</a
                                >
                            </li>
                        </ul>
                    </div>

                    <div class="new-member-list">
                        <div
                            class="d-flex align-items-center justify-content-between mb-4"
                        >
                            <div class="d-flex align-items-center">
                                <img
                                    :src="
                                        url +
                                        '/admin-assets/assets/img/avatar.jpg'
                                    "
                                    alt=""
                                    class="avatar"
                                />
                                <div>
                                    <h6>Patric Adams</h6>
                                    <p class="text-muted font-xs">
                                        Sanfrancisco
                                    </p>
                                </div>
                            </div>
                            <a href="#" class="btn btn-primary-dashboard">Add</a>
                        </div>
                        <div
                            class="d-flex align-items-center justify-content-between mb-4"
                        >
                            <div class="d-flex align-items-center">
                                <img
                                    :src="
                                        url +
                                        '/admin-assets/assets/img/avatar.jpg'
                                    "
                                    alt=""
                                    class="avatar"
                                />
                                <div>
                                    <h6>Dilan Specter</h6>
                                    <p class="text-muted font-xs">
                                        Sanfrancisco
                                    </p>
                                </div>
                            </div>
                            <a href="#" class="btn btn-primary-dashboard">Add</a>
                        </div>
                        <div
                            class="d-flex align-items-center justify-content-between mb-4"
                        >
                            <div class="d-flex align-items-center">
                                <img
                                    :src="
                                        url +
                                        '/admin-assets/assets/img/avatar.jpg'
                                    "
                                    alt=""
                                    class="avatar"
                                />
                                <div>
                                    <h6>Tomas Baker</h6>
                                    <p class="text-muted font-xs">
                                        Sanfrancisco
                                    </p>
                                </div>
                            </div>
                            <a href="#" class="btn btn-primary-dashboard">Add</a>
                        </div>
                    </div>
                </div>
            </div>
            <div
                class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing"
            >
                <div class="widget widget-chart-one-dashboard">
                    <div class="widget-heading-dashboard">
                        <ul class="tabs tab-pills">
                            <li>
                                <a
                                    href="javascript:void(0);"
                                    id="tb_1"
                                    class="tabmenu"
                                    >Recent activities</a
                                >
                            </li>
                        </ul>
                    </div>
                    <ul class="verti-timeline list-unstyled font-sm">
                        <li class="event-list">
                            <div class="event-timeline-dot">
                                <i
                                    class="material-icons md-play_circle_outline font-xxl"
                                    ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        height="20"
                                        viewBox="0 -960 960 960"
                                        width="20"
                                    >
                                        <path
                                            d="m380-300 280-180-280-180v360ZM480-80q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Zm0-80q134 0 227-93t93-227q0-134-93-227t-227-93q-134 0-227 93t-93 227q0 134 93 227t227 93Zm0-320Z"
                                            fill="#7b7d8a"
                                        /></svg
                                ></i>
                            </div>
                            <div class="media">
                                <div class="me-3">
                                    <h6>
                                        <span>Today</span>
                                        <i>
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                height="24"
                                                viewBox="0 -960 960 960"
                                                width="24"
                                            >
                                                <path
                                                    d="m700-300-57-56 84-84H120v-80h607l-83-84 57-56 179 180-180 180Z"
                                                    fill="#7b7d8a"
                                                />
                                            </svg>
                                        </i>
                                    </h6>
                                </div>
                                <div class="media-body">
                                    <div>
                                        Lorem ipsum dolor sit amet consectetur
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="event-list active">
                            <div class="event-timeline-dot">
                                <i class="material-icons"
                                    ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        height="20"
                                        viewBox="0 -960 960 960"
                                        width="20"
                                    >
                                        <path
                                            d="m380-300 280-180-280-180v360ZM480-80q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Zm0-80q134 0 227-93t93-227q0-134-93-227t-227-93q-134 0-227 93t-93 227q0 134 93 227t227 93Zm0-320Z"
                                            fill="#7b7d8a"
                                        /></svg
                                ></i>
                            </div>
                            <div class="media">
                                <div class="me-3">
                                    <h6>
                                        <span>17 May</span>
                                        <i>
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                height="24"
                                                viewBox="0 -960 960 960"
                                                width="24"
                                            >
                                                <path
                                                    d="m700-300-57-56 84-84H120v-80h607l-83-84 57-56 179 180-180 180Z"
                                                    fill="#7b7d8a"
                                                />
                                            </svg>
                                        </i>
                                    </h6>
                                </div>
                                <div class="media-body">
                                    <div>
                                        Debitis nesciunt voluptatum dicta
                                        reprehenderit
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="event-list">
                            <div class="event-timeline-dot">
                                <i class="material-icons"
                                    ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        height="20"
                                        viewBox="0 -960 960 960"
                                        width="20"
                                    >
                                        <path
                                            d="m380-300 280-180-280-180v360ZM480-80q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Zm0-80q134 0 227-93t93-227q0-134-93-227t-227-93q-134 0-227 93t-93 227q0 134 93 227t227 93Zm0-320Z"
                                            fill="#7b7d8a"
                                        /></svg
                                ></i>
                            </div>
                            <div class="media">
                                <div class="me-3">
                                    <h6>
                                        <span>13 May</span>
                                        <i>
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                height="24"
                                                viewBox="0 -960 960 960"
                                                width="24"
                                            >
                                                <path
                                                    d="m700-300-57-56 84-84H120v-80h607l-83-84 57-56 179 180-180 180Z"
                                                    fill="#7b7d8a"
                                                />
                                            </svg>
                                        </i>
                                    </h6>
                                </div>
                                <div class="media-body">
                                    <div>Accusamus voluptatibus voluptas.</div>
                                </div>
                            </div>
                        </li>
                        <li class="event-list">
                            <div class="event-timeline-dot">
                                <i class="material-icons"
                                    ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        height="20"
                                        viewBox="0 -960 960 960"
                                        width="20"
                                    >
                                        <path
                                            d="m380-300 280-180-280-180v360ZM480-80q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Zm0-80q134 0 227-93t93-227q0-134-93-227t-227-93q-134 0-227 93t-93 227q0 134 93 227t227 93Zm0-320Z"
                                            fill="#7b7d8a"
                                        /></svg
                                ></i>
                            </div>
                            <div class="media">
                                <div class="me-3">
                                    <h6>
                                        <span>05 April</span>
                                        <i>
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                height="24"
                                                viewBox="0 -960 960 960"
                                                width="24"
                                            >
                                                <path
                                                    d="m700-300-57-56 84-84H120v-80h607l-83-84 57-56 179 180-180 180Z"
                                                    fill="#7b7d8a"
                                                />
                                            </svg>
                                        </i>
                                    </h6>
                                </div>
                                <div class="media-body">
                                    <div>
                                        At vero eos et accusamus et iusto odio
                                        dignissi
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="event-list">
                            <div class="event-timeline-dot">
                                <i class="material-icons"
                                    ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        height="20"
                                        viewBox="0 -960 960 960"
                                        width="20"
                                    >
                                        <path
                                            d="m380-300 280-180-280-180v360ZM480-80q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Zm0-80q134 0 227-93t93-227q0-134-93-227t-227-93q-134 0-227 93t-93 227q0 134 93 227t227 93Zm0-320Z"
                                            fill="#7b7d8a"
                                        /></svg
                                ></i>
                            </div>
                            <div class="media">
                                <div class="me-3">
                                    <h6>
                                        <span>26 Mar</span>
                                        <i>
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                height="24"
                                                viewBox="0 -960 960 960"
                                                width="24"
                                            >
                                                <path
                                                    d="m700-300-57-56 84-84H120v-80h607l-83-84 57-56 179 180-180 180Z"
                                                    fill="#7b7d8a"
                                                />
                                            </svg>
                                        </i>
                                    </h6>
                                </div>
                                <div class="media-body">
                                    <div>
                                        Responded to need “Volunteer Activities
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
        <div class="widget widget-chart-one-dashboard">
            <div class="widget-heading-dashboard">
                <ul class="tabs tab-pills">
                    <li>
                        <a href="javascript:void(0);" id="tb_1latest" class="tabmenu"
                            >Latest orders</a
                        >
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <select class="w-75" name="pets" id="pet-select">
                        <option value="">All Categories</option>
                        <option value="women">Women's Clothing</option>
                        <option value="men">Men's Clothing</option>
                    </select>
                </div>
                <div class="col-md-9">
                    <div class="row justify-content-end">
                        <div class="col-md-3">
                    <input type="date" class="w-100" id="start" name="trip-start" value="mm/dd/yy" min="01-01-2024" max="01-01-2028" />

                        </div>
                        <div class="col-md-3">
                            <select class="w-100" name="pets" id="pet-select" >
                              <option value="">Status</option>
                                <option value="women">Paid</option>
                                <option value="men">Unpaid</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <hr />


            <div class="widget-content">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th><div class="th-content">Order ID</div></th>
                                <th><div class="th-content">Customer</div></th>
                                <th><div class="th-content">Date</div></th>
                                <th><div class="th-content">Price</div></th>
                                <th>
                                    <div class="th-content">Payment Type</div>
                                </th>
                                <th>
                                    <div class="th-content text-left">
                                        Payment Status
                                    </div>
                                </th>
                                <th>
                                    <div class="th-content text-left">
                                        View Details
                                    </div>
                                </th>
                            </tr>
                        </thead>
                        <tbody v-if="orders && orders.length > 0">
                            <template v-for="order in orders" :key="order.id">
                                <tr>
                                    <td>{{ order.order_id }}</td>
                                    <td>
                                        {{
                                            order.user_shipping_info.first_name
                                        }}
                                        {{ order.user_shipping_info.last_name }}
                                    </td>
                                    <td>14.5.2024</td>

                                    <td>{{ order.total_price }}</td>
                                    <td class="text-left">
                                        <span
                                            v-if="order.payment_status == 0"
                                            class="badge alert-primary"
                                            >COD</span
                                        >
                                        <span v-else class="badge badge-light"
                                            >Others</span
                                        >
                                    </td>
                                    <td cclass="text-left">
                                        <span
                                            v-if="order.payment_status == 0"
                                            class="badge alert-warning"
                                            >Unpaid</span
                                        >
                                        <span
                                            v-if="order.payment_status == 1"
                                            class="badge alert-primary"
                                            >Paid</span
                                        >
                                        <span
                                            v-if="order.payment_status == 2"
                                            class="badge badge-light"
                                            >Failed</span
                                        >
                                        <span
                                            v-if="order.payment_status == 3"
                                            class="badge alert-danger"
                                            >Cancel</span
                                        >
                                    </td>
                                    <td class="text-left">
                                        <a href="#" class="btn btn-xs"
                                            >View details</a
                                        >
                                    </td>
                                </tr>
                            </template>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import CustomerOfMonth from "./chart/CustomerOfMonth.vue";
import SalesOfMonth from "./chart/SalesOfMonth.vue";
import TopProductSale from "./chart/TopProductSale.vue";
import TotalEarning from "./chart/TotalEarning.vue";

export default {
    components: {
        "total-earning": TotalEarning,
        "top-product": TopProductSale,
        "customer-of-month": CustomerOfMonth,
        "sales-of-month": SalesOfMonth,
    },

    data() {
        return {
            loaded: false,
            chartData: null,
            doughtData: null,
            totalEarning: null,
            totalSaleMonth: null,
            orders: [],
            order_info: {
                ttl: 0,
                pending: 0,
                processing: 0,
                delivered: 0,
            },
            status_info: {
                active: 0,
                cancel: 0,
                onhold: 0,
            },
            url: rootUrl,
        };
    },

    methods: {
        getOrder() {
            axios
                .get(baseUrl + `get-order?no_paginate=yes&take_some=10`)
                .then((result) => {
                    this.orders = result.data;
                })
                .catch((errors) => {
                    console.log(errors);
                });
        },

        getOrderInfo() {
            axios
                .get(baseUrl + `get-order-info`)
                .then((result) => {
                    result.data.countdata.map((item, i) => {
                        switch (item.order_position) {
                            case 0:
                                this.order_info.ttl = item.total;
                                break;
                            case 1:
                                this.order_info.pending = item.total;
                                break;
                            case 2:
                                this.order_info.processing = item.total;
                                break;
                            case 3:
                                this.order_info.delivered = item.total;
                                break;
                        }
                    });
                    result.data.orStatus.map((item, i) => {
                        switch (item.status) {
                            case 0:
                                this.status_info.cancel = item.order_status;
                                break;
                            case 1:
                                this.status_info.active = item.order_status;
                                break;
                            case 2:
                                this.status_info.onhold = item.order_status;
                                break;
                        }
                    });
                })
                .catch((errors) => {
                    console.log(errors);
                });
        },

        getDataMonth() {
            axios.get(baseUrl + "customer-of-this-month").then((response) => {
                this.chartData = {
                    labels: response.data.customer.map(
                        (item) => item.monthname
                    ),
                    datasets: [
                        {
                            label: "This Year Customer",
                            data: response.data.customer.map(
                                (item) => item.count
                            ),
                            backgroundColor: [
                                "rgba(255, 99, 132, 0.2)",
                                "rgba(255, 159, 64, 0.2)",
                                "rgba(255, 205, 86, 0.2)",
                                "rgba(75, 192, 192, 0.2)",
                                "rgba(54, 162, 235, 0.2)",
                                "rgba(153, 102, 255, 0.2)",
                                "rgba(201, 203, 207, 0.2)",
                                "rgba(255, 51, 51, 0.2)",
                                "rgba(51, 153, 255, 0.2)",
                                "rgba(255, 102, 255, 0.2)",
                                "rgba(255, 229, 204, 0.2)",
                                "rgba(102, 255, 102, 0.2)",
                            ],
                            borderColor: [
                                "rgb(255, 99, 132)",
                                "rgb(255, 159, 64)",
                                "rgb(255, 205, 86)",
                                "rgb(75, 192, 192)",
                                "rgb(54, 162, 235)",
                                "rgb(153, 102, 255)",
                                "rgb(201, 203, 207)",
                                "rgb(255, 51, 51)",
                                "rgb(51, 153, 255)",
                                "rgb(255, 102, 255)",
                                "rgb(255, 229, 204)",
                                "rgb(102, 255, 102)",
                            ],
                            borderWidth: 1,
                        },
                    ],
                };

                this.doughtData = {
                    labels: response.data.sale_by_cat.map(
                        (item) => item.catname
                    ),
                    datasets: [
                        {
                            backgroundColor: [
                                "#41B883",
                                "#E46651",
                                "#00D8FF",
                                "#DD1B16",
                                "#FF6347",
                                "#FF8C00",
                                "#9ACD32",
                                "#8A2BE2",
                                "#DA70D6",
                                "#F5DEB3",
                            ],
                            hoverOffset: 1,
                            data: response.data.sale_by_cat.map(
                                (item) => item.productsCount
                            ),
                        },
                    ],
                };

                this.totalEarning = {
                    labels: response.data.earning.map((itm) => itm.monthname),
                    datasets: [
                        {
                            label: "Total Earning",
                            backgroundColor: "#f87979",
                            data: response.data.earning.map(
                                (itm) => itm.total_earn
                            ),
                            fill: false,
                            borderColor: "rgb(75, 192, 192)",
                            tension: 0.1,
                        },
                    ],
                };

                this.totalSaleMonth = {
                    labels: response.data.sales_of_month.map(
                        (itm) => itm.dayname
                    ),
                    datasets: [
                        {
                            label: "Sales This Month",
                            backgroundColor: "#d17cfd",
                            data: response.data.sales_of_month.map(
                                (itm) => itm.total_sale
                            ),
                            fill: false,
                            borderColor: "rgb(255, 205, 86)",
                            tension: 0.1,
                        },
                    ],
                };
                this.loaded = true;
            });
        },
    },

    mounted() {
        this.getDataMonth();
        this.getOrder();
        this.getOrderInfo();
    },
};
</script>

<style scoped>
.gdar {
    background: linear-gradient(
        linear-gradient(140deg, #6e85b1 0 34%, #d9dce0 -40% 51%)
    ) !important;
}
.new-member-list img.avatar {
    width: 40px;
    height: 40px;
    margin-right: 10px;
    border-radius: 50%;
}
.verti-timeline {
    border-left: 2px dashed #e1e1e1;
    margin: 0 10px;
}

.verti-timeline .event-list {
    position: relative;
    padding: 0 0 18px 30px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
.verti-timeline .event-list .event-timeline-dot {
    position: absolute;
    left: -9px;
    top: 0;
    z-index: 9;
    font-size: 16px;
    color: #6c757d;
}
.me-3 {
    margin-right: 1rem !important;
}
.media h6 span {
    display: inline-block;
    min-width: 50px;
}
.card-title {
    size: 14px !important;
    line-height: 21px !important;
}
.text-sm {
    font-family: "Lato", sans-serif;
    font-weight: 400;
    size: 12px !important;
    line-height: 18px;
}
.table td {
    border-top: none;
}
</style>
