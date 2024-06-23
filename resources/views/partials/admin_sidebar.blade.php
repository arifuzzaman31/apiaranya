<div class="sidebar-wrapper sidebar-theme">
    <nav id="sidebar">
        <ul class="list-unstyled menu-categories" id="accordionExample">
            <li class="menu @if (request()->is('admin/dashboard')) active @endif">
                <a href="{{ url('admin/dashboard') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">

                        <svg width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path d="M10 20V14H14V20H19V12H22L12 3L2 12H5V20H10Z" />
                        </svg>
                        <span>Dashboard</span>
                    </div>
                </a>
            </li>


            <li class="menu  @if (request()->is('admin/colour') || request()->is('admin/sizes')) || request()->is('admin/fabrics')) active @endif">
                <a href="#attrs" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24"
                            width="24">
                            <path d="M0 0h24v24H0V0z" fill="none" />
                            <path
                                d="M15 2H6c-1.1 0-2 .9-2 2v16c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V7l-5-5zM6 20V4h8v4h4v12H6zm10-10v5c0 2.21-1.79 4-4 4s-4-1.79-4-4V8.5c0-1.47 1.26-2.64 2.76-2.49 1.3.13 2.24 1.32 2.24 2.63V15h-2V8.5c0-.28-.22-.5-.5-.5s-.5.22-.5.5V15c0 1.1.9 2 2 2s2-.9 2-2v-5h2z" />
                        </svg>
                        <span>Attribute</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right">
                            <polyline points="9 18 15 12 9 6"></polyline>
                        </svg>

                    </div>
                </a>
                <ul class="collapse submenu list-unstyled" id="attrs" data-parent="#accordionExample">
                    <li>
                        <a href="{{ route('colour.index') }}"> Colour </a>
                    </li>
                    <li>
                        <a href="{{ route('sizes.index') }}"> Size </a>
                    </li>
                    <li>
                        <a href="{{ route('fabrics.index') }}"> Fabrics </a>
                    </li>
                    <li>
                        <a href="{{ route('vendors.index') }}"> Vendor </a>
                    </li>
                    <li>
                        <a href="{{ route('brands.index') }}"> Brand </a>
                    </li>
                    <li>
                        <a href="{{ route('designers.index') }}"> Designer </a>
                    </li>
                    <li>
                        <a href="{{ route('artist.index') }}"> Artist </a>
                    </li>
                    <li>
                        <a href="{{ route('embellishment.index') }}"> Embellishment </a>
                    </li>
                    <li>
                        <a href="{{ route('making.index') }}"> Making </a>
                    </li>
                    <li>
                        <a href="{{ route('season.index') }}"> Season </a>
                    </li>
                    <li>
                        <a href="{{ route('varieties.index') }}"> Variety </a>
                    </li>
                    <li>
                        <a href="{{ route('fit.index') }}"> Fit </a>
                    </li>
                    <li>
                        <a href="{{ route('consignment.index') }}"> Consignment </a>
                    </li>
                    <li>
                        <a href="{{ route('ingredient.index') }}"> Ingredient </a>
                    </li>
                    <li>
                        <a href="{{ route('care.index') }}"> Care </a>
                    </li>
                    <!-- <li>
                    <a href="route('country.index')"> Country </a>
                </li> -->
                    <li>
                        <a href="{{ route('vat-tax.index') }}"> VAT </a>
                    </li>
                </ul>
            </li>
            {{-- <li class="menu active">
                <a href="#forms" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clipboard"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>
                        <span>Dashboard</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
                    </div>
                </a>
                <ul class="collapse submenu recent-submenu list-unstyled show" id="forms" data-parent="#accordionExample">
                    <li>
                        <a href="form_bootstrap_basic.html"> Basic </a>
                    </li>
                </ul>
            </li> --}}



        @if (checkPermission('page-view'))
            <li class="menu @if (request()->is('admin/home-page')) active @endif">
                <a href="#pages" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M19.41 9.58L10.41 0.58C10.05 0.22 9.55 0 9 0H2C0.9 0 0 0.9 0 2V9C0 9.55 0.22 10.05 0.59 10.42L9.59 19.42C9.95 19.78 10.45 20 11 20C11.55 20 12.05 19.78 12.41 19.41L19.41 12.41C19.78 12.05 20 11.55 20 11C20 10.45 19.77 9.94 19.41 9.58ZM3.5 5C2.67 5 2 4.33 2 3.5C2 2.67 2.67 2 3.5 2C4.33 2 5 2.67 5 3.5C5 4.33 4.33 5 3.5 5Z"
                                fill="#ADB5BD" />
                        </svg>
                        <span>Pages</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right">
                            <polyline points="9 18 15 12 9 6"></polyline>
                        </svg>
                    </div>
                </a>
                <ul class="collapse submenu list-unstyled" id="pages" data-parent="#accordionExample">
                    <li>
                        <a href="{{ route('home-page') }}"> Home </a>
                    </li>
                    <li>
                        <a href="{{ route('shipping') }}"> Shipping </a>
                    </li>
                    <li>
                        <a href="{{ route('information') }}"> Information </a>
                    </li>
                </ul>
            </li>
        @endif
        <li class="menu">
            <a href="#story" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                <div class="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                        stroke-linejoin="round" class="feather feather-command">
                        <path
                            d="M18 3a3 3 0 0 0-3 3v12a3 3 0 0 0 3 3 3 3 0 0 0 3-3 3 3 0 0 0-3-3H6a3 3 0 0 0-3 3 3 3 0 0 0 3 3 3 3 0 0 0 3-3V6a3 3 0 0 0-3-3 3 3 0 0 0-3 3 3 3 0 0 0 3 3h12a3 3 0 0 0 3-3 3 3 0 0 0-3-3z">
                        </path>
                    </svg>
                    <span>Story</span>
                </div>
                <div>
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                        stroke-linejoin="round" class="feather feather-chevron-right">
                        <polyline points="9 18 15 12 9 6"></polyline>
                    </svg>
                </div>
            </a>
            <ul class="collapse submenu list-unstyled" id="story" data-parent="#accordionExample">

                <li>
                    <a href="{{ route('story.home') }}">Home </a>
                </li>

                <li>
                    <a href="{{ route('about.aranya') }}">About Aranya </a>
                </li>

                <li>
                    <a href="{{ route('story.community') }}">Community </a>
                </li>

                <li>
                    <a href="{{ route('story.color-story') }}">Color Stories </a>
                </li>

                <li>
                    <a href="{{ route('story.sustainability') }}">Sustainability</a>
                </li>

                <li>
                    <a href="{{ route('story.blog') }}">Blogs </a>
                </li>
            </ul>
        </li>
            @if (checkPermission('menu-view'))
            <li class="menu @if (request()->is('admin/category')) active @endif">
                <a href="#menus" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24"
                            width="24">
                            <path d="M0 0h24v24H0z" fill="none" />
                            <path
                                d="M13 13v8h8v-8h-8zM3 21h8v-8H3v8zM3 3v8h8V3H3zm13.66-1.31L11 7.34 16.66 13l5.66-5.66-5.66-5.65z" />
                        </svg>

                        <span>Menu</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right">
                            <polyline points="9 18 15 12 9 6"></polyline>
                        </svg>
                    </div>
                </a>
                <ul class="collapse submenu list-unstyled" id="menus" data-parent="#accordionExample">
                    <li>
                        <a href="{{ route('category.index') }}"> Category </a>
                    </li>
                    <li>
                        <a href="{{ route('pickuphub.index') }}">Pickup Hub</a>
                    </li>
                </ul>
            </li>
        @endif

        @if (checkPermission('role-view'))
            <li class="menu @if (request()->is('admin/role')) active @endif">
                <a href="{{ route('role.index') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock">
                            <rect x="3" y="11" width="18" height="11" rx="2" ry="2">
                            </rect>
                            <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                        </svg>
                        <span>Role & Permission</span>
                    </div>
                </a>
            </li>
        @endif
        @if (checkPermission('product-view'))
            <li class="menu @if (request()->is('admin/product')) active @endif">
                <a href="{{ route('product.index') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <!-- <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-box">
                        <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path>
                        <polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
                        <line x1="12" y1="22.08" x2="12" y2="12"></line>
                    </svg> -->
                        <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24"
                            viewBox="0 0 24 24" width="24">
                            <g>
                                <rect fill="none" height="24" width="24" />
                                <path
                                    d="M18,6h-2c0-2.21-1.79-4-4-4S8,3.79,8,6H6C4.9,6,4,6.9,4,8v12c0,1.1,0.9,2,2,2h12c1.1,0,2-0.9,2-2V8C20,6.9,19.1,6,18,6z M10,10c0,0.55-0.45,1-1,1s-1-0.45-1-1V8h2V10z M12,4c1.1,0,2,0.9,2,2h-4C10,4.9,10.9,4,12,4z M16,10c0,0.55-0.45,1-1,1 s-1-0.45-1-1V8h2V10z" />
                            </g>
                        </svg>
                        <span>Product</span>
                    </div>
                </a>
            </li>
        @endif
            @if (checkPermission('order-view'))
            <li class="menu @if (request()->is('admin/order')) active @endif">
                <a href="{{ route('order') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24"
                            width="24">
                            <path d="M0 0h24v24H0z" fill="none" />
                            <path
                                d="M7 18c-1.1 0-1.99.9-1.99 2S5.9 22 7 22s2-.9 2-2-.9-2-2-2zM1 2v2h2l3.6 7.59-1.35 2.45c-.16.28-.25.61-.25.96 0 1.1.9 2 2 2h12v-2H7.42c-.14 0-.25-.11-.25-.25l.03-.12.9-1.63h7.45c.75 0 1.41-.41 1.75-1.03l3.58-6.49c.08-.14.12-.31.12-.48 0-.55-.45-1-1-1H5.21l-.94-2H1zm16 16c-1.1 0-1.99.9-1.99 2s.89 2 1.99 2 2-.9 2-2-.9-2-2-2z" />
                        </svg>

                        <span>Order</span>
                    </div>
                </a>
            </li>
        @endif
        @if (checkPermission('refund-view'))
            <li class="menu @if (request()->is('admin/refund')) active @endif">
                <a href="#refund" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" class="feather feather-terminal">
                            <polyline points="4 17 10 11 4 5"></polyline>
                            <line x1="12" y1="19" x2="20" y2="19"></line>
                        </svg>
                        <span>Refund</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right">
                            <polyline points="9 18 15 12 9 6"></polyline>
                        </svg>
                    </div>
                </a>
                <ul class="collapse submenu list-unstyled" id="refund" data-parent="#accordionExample">
                    @if (checkPermission('refund-configure'))
                        <li>
                            <a href="{{ route('refund-configure') }}">Refund Configure </a>
                        </li>
                    @endif
                    @if (checkPermission('refund-request-view'))
                        <li>
                            <a href="{{ route('refund') }}">Refund Request </a>
                        </li>
                    @endif
                    @if (checkPermission('approve-refund-view'))
                        <li>
                            <a href="{{ route('approve-refund') }}">Approved Refund </a>
                        </li>
                    @endif

                    @if (checkPermission('reject-refund-view'))
                        <li>
                            <a href="{{ route('reject-refund') }}">Reject Refund </a>
                        </li>
                    @endif
                </ul>
            </li>
        @endif
            @if (checkPermission('customer-view'))
            <li class="menu @if (request()->is('admin/customers')) active @endif" id="productMenu">
                <a href="{{ route('customers') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" class="feather feather-users">
                            <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                            <circle cx="9" cy="7" r="4"></circle>
                            <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                            <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                        </svg>
                        <span>Customer</span>
                    </div>
                </a>
            </li>
        @endif
        @if (checkPermission('campaign-view'))
            <li class="menu @if (request()->is('admin/campaign')) active @endif" id="productMenu">
                <a href="{{ route('campaign.index') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" class="feather feather-map">
                            <polygon points="1 6 1 22 8 18 16 22 23 18 23 2 16 6 8 2 1 6"></polygon>
                            <line x1="8" y1="2" x2="8" y2="18"></line>
                            <line x1="16" y1="6" x2="16" y2="22"></line>
                        </svg>
                        <span>Campaign</span>
                    </div>
                </a>
            </li>
        @endif

            @if (checkPermission('media-view'))
            <li class="menu @if (request()->is('admin/media-manager')) active @endif" id="productMenu">
                <a href="{{ route('media-manager.index') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" class="feather feather-film">
                            <rect x="2" y="2" width="20" height="20" rx="2.18" ry="2.18">
                            </rect>
                            <line x1="7" y1="2" x2="7" y2="22"></line>
                            <line x1="17" y1="2" x2="17" y2="22"></line>
                            <line x1="2" y1="12" x2="22" y2="12"></line>
                            <line x1="2" y1="7" x2="7" y2="7"></line>
                            <line x1="2" y1="17" x2="7" y2="17"></line>
                            <line x1="17" y1="17" x2="22" y2="17"></line>
                            <line x1="17" y1="7" x2="22" y2="7"></line>
                        </svg>
                        <span>Media Manager</span>
                    </div>
                </a>
            </li>
        @endif

            @if (checkPermission('employee-view'))
                <li class="menu @if (request()->is('admin/employee')) active @endif">
                    <a href="{{ route('employee.index') }}" aria-expanded="false" class="dropdown-toggle">
                        <div class="">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                stroke-linecap="round" stroke-linejoin="round" class="feather feather-user">
                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                <circle cx="12" cy="7" r="4"></circle>
                            </svg>
                            <span>Employee</span>
                        </div>
                    </a>
                </li>
            @endif

            @if (checkPermission('report-view'))
                <li class="menu @if (request()->is('admin/order-report')) active @endif">
                    <a href="#report" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <div class="">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                stroke-linecap="round" stroke-linejoin="round" class="feather feather-pie-chart">
                                <path d="M21.21 15.89A10 10 0 1 1 8 2.83"></path>
                                <path d="M22 12A10 10 0 0 0 12 2v10z"></path>
                            </svg>
                            <span>Reports</span>
                        </div>
                        <div>
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right">
                                <polyline points="9 18 15 12 9 6"></polyline>
                            </svg>
                        </div>
                    </a>
                    <ul class="collapse submenu list-unstyled" id="report" data-parent="#accordionExample">
                        @if (checkPermission('sales-report'))
                            <li>
                                <a href="{{ route('sales.report') }}">Sales Report </a>
                            </li>
                        @endif
                        @if (checkPermission('campaign-report'))
                            <li>
                                <a href="{{ route('campaign.report') }}">Campaign Report </a>
                            </li>
                        @endif
                        @if (checkPermission('stock-report'))
                            <li>
                                <a href="{{ route('stock.report') }}">Stock Report </a>
                            </li>
                        @endif
                        @if (checkPermission('payment-report'))
                            <li>
                                <a href="{{ route('payment.report') }}">Payment Report </a>
                            </li>
                        @endif
                        @if (checkPermission('customer-lifetime-value-report'))
                            <li>
                                <a href="{{ route('customer-lifetime.report') }}">Customer Lifetime Value </a>
                            </li>
                        @endif
                        @if (checkPermission('customer-refund-report'))
                            <li>
                                <a href="{{ route('customer-refund.report') }}">Customer Refund Report </a>
                            </li>
                        @endif
                        @if (checkPermission('individual-customer-report'))
                            <li>
                                <a href="{{ route('individual-customer.report') }}">Individual Customer Report </a>
                            </li>
                        @endif
                        @if (checkPermission('invoice-report'))
                            <li>
                                <a href="{{ route('invoice.report') }}">Invoice Report </a>
                            </li>
                        @endif
                        @if (checkPermission('product-report'))
                            <li>
                                <a href="{{ route('product.report') }}">Product Report </a>
                            </li>
                        @endif
                    </ul>
                </li>
            @endif

        </ul>

    </nav>

</div>
