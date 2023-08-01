<div class="sidebar-wrapper sidebar-theme">  
    <nav id="sidebar" style="height: 92%;overflow-y: auto;">
        <ul class="list-unstyled menu-categories" id="accordionExample">
            <li class="menu @if(request()->is('admin/dashboard')) active @endif">
                <a href="{{ url('admin/dashboard') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                        <span>Dashboard</span>
                    </div>
                </a> 
            </li>

            <li class="menu md-visible menu-heading">
                <div class="heading"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-minus"><line x1="5" y1="12" x2="19" y2="12"></line></svg><span>Apps</span></div>
            </li>

            <li class="menu md-visible">
                <a href="apps_chat.html" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>
                        <span>Chat</span>
                    </div>
                </a>
            </li>

            <li class="menu md-visible">
                <a href="apps_mailbox.html" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
                        <span>Mailbox</span>
                    </div>
                </a>
            </li>

            <li class="menu md-visible">
                <a href="apps_todoList.html" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                        <span>Todo List</span>
                    </div>
                </a>
            </li>

            <li class="menu md-visible">
                <a href="apps_notes.html" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        <span>Notes</span>
                    </div>
                </a>
            </li>

            <li class="menu md-visible">
                <a href="apps_scrumboard.html" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-plus"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="12" y1="18" x2="12" y2="12"></line><line x1="9" y1="15" x2="15" y2="15"></line></svg>
                        <span>Scrumboard</span>
                    </div>
                </a>
            </li>

            <li class="menu md-visible">
                <a href="apps_contacts.html" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg>
                        <span>Contacts</span>
                    </div>
                </a>
            </li>

            <li class="menu md-visible">
                <a href="apps_invoice.html" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-dollar-sign"><line x1="12" y1="1" x2="12" y2="23"></line><path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path></svg>
                        <span>Invoice List</span>
                    </div>
                </a>
            </li>

            <li class="menu md-visible">
                <a href="apps_calendar.html" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                        <span>Calendar</span>
                    </div>
                </a>
            </li>
         
            @if(checkPermission('attribute-view'))
            <li class="menu  @if(request()->is('admin/colour') || request()->is('admin/sizes')) || request()->is('admin/fabrics')) active @endif">
                <a href="#attrs" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-box"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
                        <span>Attribute</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
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
                        <a href="{{ route('country.index') }}"> Country </a>
                    </li> -->
                    <li>
                        <a href="{{ route('vat-tax.index') }}"> VAT </a>
                    </li>
                </ul>
            </li>
            @endif
            @if(checkPermission('page-view'))
            <li class="menu @if(request()->is('admin/home-page')) active @endif">
                <a href="#pages" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-layers"><polygon points="12 2 2 7 12 12 22 7 12 2"></polygon><polyline points="2 17 12 22 22 17"></polyline><polyline points="2 12 12 17 22 12"></polyline></svg>
                        <span>Pages</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
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

            @if(checkPermission('menu-view'))
            <li class="menu @if(request()->is('admin/category')) active @endif">
                <a href="#menus" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-zap"><polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"></polygon></svg>
                        <span>Menu</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
                    </div>
                </a>
                <ul class="collapse submenu list-unstyled" id="menus" data-parent="#accordionExample">
                    <li>
                        <a href="{{ route('category.index') }}"> Category </a>
                    </li>
                </ul>
            </li>
            @endif

            @if(checkPermission('role-view'))
            <li class="menu @if(request()->is('admin/role')) active @endif">
                <a href="{{ route('role.index') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
                        <span>Role & Permission</span>
                    </div>
                </a>
            </li>
            @endif
            @if(checkPermission('product-view'))
            <li class="menu @if(request()->is('admin/product')) active @endif">
                <a href="{{ route('product.index') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-box"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
                        <span>Product</span>
                    </div>
                </a>
            </li>
            @endif
            @if(checkPermission('order-view'))
            <li class="menu @if(request()->is('admin/order')) active @endif">
                <a href="{{ route('order') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-target"><circle cx="12" cy="12" r="10"></circle><circle cx="12" cy="12" r="6"></circle><circle cx="12" cy="12" r="2"></circle></svg>
                        <span>Order</span>
                    </div>
                </a>
            </li>
            @endif
            @if(checkPermission('refund-view'))
            <li class="menu @if(request()->is('admin/refund')) active @endif">
                <a href="#refund" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-terminal"><polyline points="4 17 10 11 4 5"></polyline><line x1="12" y1="19" x2="20" y2="19"></line></svg>
                        <span>Refund</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
                    </div>
                </a>
                <ul class="collapse submenu list-unstyled" id="refund" data-parent="#accordionExample">
                    @if(checkPermission('refund-configure'))
                    <li>
                        <a href="{{ route('refund-configure') }}">Refund Configure </a>
                    </li>
                    @endif
                    @if(checkPermission('refund-request-view'))
                    <li>
                        <a href="{{ route('refund') }}">Refund Request </a>
                    </li>
                    @endif
                    @if(checkPermission('approve-refund-view'))
                    <li>
                        <a href="{{ route('approve-refund') }}">Approved Refund </a>
                    </li>
                    @endif
                    
                    @if(checkPermission('reject-refund-view'))
                    <li>
                        <a href="{{ route('reject-refund') }}">Reject Refund </a>
                    </li>
                    @endif
                </ul>
            </li>
            @endif
            @if(checkPermission('customer-view'))
            <li class="menu @if(request()->is('admin/customers')) active @endif" id="productMenu">
                <a href="{{ route('customers') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                        <span>Customer</span>
                    </div>
                </a>
            </li>
            @endif
            @if(checkPermission('campaign-view'))
            <li class="menu @if(request()->is('admin/campaign')) active @endif" id="productMenu">
                <a href="{{ route('campaign.index') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map"><polygon points="1 6 1 22 8 18 16 22 23 18 23 2 16 6 8 2 1 6"></polygon><line x1="8" y1="2" x2="8" y2="18"></line><line x1="16" y1="6" x2="16" y2="22"></line></svg>
                        <span>Campaign</span>
                    </div>
                </a>
            </li>
            @endif
            @if(checkPermission('media-view'))
            <li class="menu @if(request()->is('admin/media-manager')) active @endif" id="productMenu">
                <a href="{{ route('media-manager.index') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-film"><rect x="2" y="2" width="20" height="20" rx="2.18" ry="2.18"></rect><line x1="7" y1="2" x2="7" y2="22"></line><line x1="17" y1="2" x2="17" y2="22"></line><line x1="2" y1="12" x2="22" y2="12"></line><line x1="2" y1="7" x2="7" y2="7"></line><line x1="2" y1="17" x2="7" y2="17"></line><line x1="17" y1="17" x2="22" y2="17"></line><line x1="17" y1="7" x2="22" y2="7"></line></svg>
                        <span>Media Manager</span>
                    </div>
                </a>
            </li>
            @endif
            @if(checkPermission('employee-view'))
            <li class="menu @if(request()->is('admin/employee')) active @endif">
                <a href="{{ route('employee.index') }}" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                        <span>Employee</span>
                    </div>
                </a>
            </li>
            @endif

            @if(checkPermission('report-view'))
            <li class="menu @if(request()->is('admin/order-report')) active @endif">
                <a href="#report" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <div class="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-pie-chart"><path d="M21.21 15.89A10 10 0 1 1 8 2.83"></path><path d="M22 12A10 10 0 0 0 12 2v10z"></path></svg>
                        <span>Reports</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
                    </div>
                </a>
                <ul class="collapse submenu list-unstyled" id="report" data-parent="#accordionExample">
                    @if(checkPermission('sales-report'))
                        <li>
                            <a href="{{ route('sales.report') }}">Sales Report </a>
                        </li>
                    @endif
                    @if(checkPermission('campaign-report'))
                        <li>
                            <a href="{{ route('campaign.report') }}">Campaign Report </a>
                        </li>
                    @endif
                    @if(checkPermission('stock-report'))
                        <li>
                            <a href="{{ route('stock.report') }}">Stock Report </a>
                        </li>
                    @endif
                    @if(checkPermission('payment-report'))
                        <li>
                            <a href="{{ route('payment.report') }}">Payment Report </a>
                        </li>
                    @endif
                    @if(checkPermission('customer-lifetime-value-report'))
                        <li>
                            <a href="{{ route('customer-lifetime.report') }}">Customer Lifetime Value </a>
                        </li>
                    @endif
                    @if(checkPermission('customer-refund-report'))
                        <li>
                            <a href="{{ route('customer-refund.report') }}">Customer Refund Report </a>
                        </li>
                    @endif
                    @if(checkPermission('individual-customer-report'))
                        <li>
                            <a href="{{ route('individual-customer.report') }}">Individual Customer Report </a>
                        </li>
                    @endif
                    @if(checkPermission('invoice-report'))
                        <li>
                            <a href="{{ route('invoice.report') }}">Invoice Report </a>
                        </li>
                    @endif
                </ul>
            </li>
            @endif
        </ul>
        
    </nav>

</div>