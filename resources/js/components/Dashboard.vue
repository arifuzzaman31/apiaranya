<template>
    <div class="layout-px-spacing" v-if="loaded">
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
                                    padding: 1rem 0.69rem !important;
                                    background-color: rgb(60 86 118 / 39%);
                                "
                            >
                                <i
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
                                </i>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title text-bold">
                                Total Order
                            </h6>
                            <span>{{ Number(order_info.pending)+Number(order_info.processing)+Number(order_info.delivered) }}</span> <br />
                            <span class="text-sm">
                                Count Total Order
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
                                    background-color: rgb(60 86 118 / 39%);
                                "
                            >
                                <i
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
                                </i>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title text-bold">Pending Order</h6>
                            <span>{{ order_info.pending }}</span> <br />
                            <span class="text-sm">
                                Count Total Pending order
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
                                    background-color: rgb(60 86 118 / 39%);
                                "
                            >
                                <i
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
                                            d="M4 8h16v10a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2zm4-4h8l4 4H4zm0 8h4"
                                        />
                                    </svg>
                                </i>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title text-bold">Processing</h6>
                            <span>{{ order_info.processing }}</span> <br />
                            <span class="text-sm">
                                Count Order Under Processing
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
                                    background-color: rgb(60 86 118 / 39%);
                                "
                            >
                                <i
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
                                            d="M8 8H6a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8a2 2 0 0 0-2-2h-2M8 8V6a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2M8 8h8m-4 4v2m0 0v2m0-2h-2m2 0h2"
                                        />
                                    </svg>
                                </i>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title text-bold">
                               Total Delivered
                            </h6>
                            <span>{{ order_info.delivered }}</span> <br />
                            <span class="text-sm">
                                Counting of Total Delivered Order
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
                <div class="widget widget-chart-one">
                    <div class="widget-heading">
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
                <div class="widget widget-chart-two">
                    <div class="widget-heading">
                        <h5 class="">Sales by Category</h5>
                    </div>
                    <div class="widget-content">
                        <top-product :doughtData="doughtData" />
                    </div>
                </div>
            </div>

            <div
                class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing"
            >
                <div class="widget widget-chart-one">
                    <div class="widget-heading">
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
                <div class="widget widget-chart-one">
                    <div class="widget-heading">
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
                <div class="widget widget-chart-one">
                    <div class="widget-heading">
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
                                    :src="url+'/admin-assets/assets/img/avatar.jpg'"
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
                            <a href="#" class="btn btn-primary">Add</a>
                        </div>
                        <div
                            class="d-flex align-items-center justify-content-between mb-4"
                        >
                            <div class="d-flex align-items-center">
                                <img
                                    :src="url+'/admin-assets/assets/img/avatar.jpg'"
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
                            <a href="#" class="btn btn-primary">Add</a>
                        </div>
                        <div
                            class="d-flex align-items-center justify-content-between mb-4"
                        >
                            <div class="d-flex align-items-center">
                                <img
                                    :src="url+'/admin-assets/assets/img/avatar.jpg'"
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
                            <a href="#" class="btn btn-primary">Add</a>
                        </div>
                    </div>
                </div>
            </div>
            <div
                class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing"
            >
                <div class="widget widget-chart-one">
                    <div class="widget-heading">
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
                                            fill="#7b7d8a"/></svg></i>
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
                                <i
                                    class="material-icons"
                                    ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        height="20"
                                        viewBox="0 -960 960 960"
                                        width="20"
                                    >
                                        <path
                                            d="m380-300 280-180-280-180v360ZM480-80q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Zm0-80q134 0 227-93t93-227q0-134-93-227t-227-93q-134 0-227 93t-93 227q0 134 93 227t227 93Zm0-320Z"
                                            fill="#7b7d8a"/></svg></i>
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
                                 <i
                                    class="material-icons"
                                    ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        height="20"
                                        viewBox="0 -960 960 960"
                                        width="20"
                                    >
                                        <path
                                            d="m380-300 280-180-280-180v360ZM480-80q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Zm0-80q134 0 227-93t93-227q0-134-93-227t-227-93q-134 0-227 93t-93 227q0 134 93 227t227 93Zm0-320Z"
                                            fill="#7b7d8a"/></svg></i>
                            </div>
                            <div class="media">
                                <div class="me-3">
                                    <h6>
                                        <span>13 May</span>
                                        <i  >
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                height="24"
                                                viewBox="0 -960 960 960"
                                                width="24"
                                            >
                                                <path
                                                    d="m700-300-57-56 84-84H120v-80h607l-83-84 57-56 179 180-180 180Z"
                                                    fill="#7b7d8a"/>
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
                                 <i
                                    class="material-icons"
                                    ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        height="20"
                                        viewBox="0 -960 960 960"
                                        width="20"
                                    >
                                        <path
                                            d="m380-300 280-180-280-180v360ZM480-80q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Zm0-80q134 0 227-93t93-227q0-134-93-227t-227-93q-134 0-227 93t-93 227q0 134 93 227t227 93Zm0-320Z"
                                            fill="#7b7d8a"/></svg></i>
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
                                <i
                                    class="material-icons"
                                    ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        height="20"
                                        viewBox="0 -960 960 960"
                                        width="20"
                                    >
                                        <path
                                            d="m380-300 280-180-280-180v360ZM480-80q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Zm0-80q134 0 227-93t93-227q0-134-93-227t-227-93q-134 0-227 93t-93 227q0 134 93 227t227 93Zm0-320Z"
                                            fill="#7b7d8a"/></svg></i>
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
        <div class="widget widget-table-two">
            <div class="widget-heading">
                <h5 class="">Recent Orders</h5>
            </div>

            <div class="widget-content">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th><div class="th-content">OrderID</div></th>
                                <th><div class="th-content">Customer</div></th>
                                <th><div class="th-content">Price</div></th>
                                <th>
                                    <div class="th-content">Payment Type</div>
                                </th>
                                <th><div class="th-content">Payment</div></th>
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
                                    <td>{{ order.total_price }}</td>
                                    <td class="text-center">
                                        <span
                                            v-if="order.payment_status == 0"
                                            class="badge rounded-pill alert-primary"
                                            >COD</span
                                        >
                                        <span v-else class="badge badge-light"
                                            >Others</span
                                        >
                                    </td>
                                    <td>
                                        <span
                                            v-if="order.payment_status == 0"
                                            class="badge rounded-pill alert-warning"
                                            >Unpaid</span
                                        >
                                        <span
                                            v-if="order.payment_status == 1"
                                            class="badge rounded-pill alert-primary"
                                            >Paid</span
                                        >
                                        <span
                                            v-if="order.payment_status == 2"
                                            class="badge badge-light"
                                            >Failed</span
                                        >
                                        <span
                                            v-if="order.payment_status == 3"
                                            class="badge rounded-pill alert-danger"
                                            >Cancel</span
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
            url: rootUrl
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


</style>
