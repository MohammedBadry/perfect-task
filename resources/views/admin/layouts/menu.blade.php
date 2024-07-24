  <!-- sidebar @s -->
  <div class="nk-sidebar nk-sidebar-fixed is-light " data-content="sidebarMenu">
      <div class="nk-sidebar-element nk-sidebar-head">
          <div class="nk-sidebar-brand">
              <a href="{{url(request()->segment('1').'/dashboard')}}" class="logo-link nk-sidebar-logo">
                    <img class="logo-light logo-img" src="{{ it()->url(setting()->logo) }}" srcset="{{ it()->url(setting()->logo) }}" alt="logo">
                    <img class="logo-dark logo-img" src="{{ it()->url(setting()->logo) }}" srcset="{{ it()->url(setting()->logo) }}" alt="logo-dark">
                    <img class="logo-small logo-img logo-img-small" src="{{ it()->url(setting()->icon) }}" srcset="{{ it()->url(setting()->icon) }}" alt="logo-small">
              </a>
          </div>
          <div class="nk-menu-trigger mr-n2">
              <a href="#" class="nk-nav-toggle nk-quick-nav-icon d-xl-none" data-target="sidebarMenu"><em class="icon ni ni-arrow-left"></em></a>
              <a href="#" class="nk-nav-compact nk-quick-nav-icon d-none d-xl-inline-flex" data-target="sidebarMenu"><em class="icon ni ni-menu"></em></a>
          </div>
      </div><!-- .nk-sidebar-element -->
      <div class="nk-sidebar-element">
          <div class="nk-sidebar-content">
              <div class="nk-sidebar-menu" data-simplebar>
                  <ul class="nk-menu">
                      <li class="nk-menu-item">
                          <a href="{{url(request()->segment('1').'/dashboard')}}" class="nk-menu-link">
                              <span class="nk-menu-icon"><em class="icon ni ni-home"></em></span>
                              <span class="nk-menu-text">{{ trans('admin.dashboard') }}</span>
                          </a>
                      </li>


                      @if(admin()->user()->role("categories_show"))
                      <li class="nk-menu-item has-sub">
                          <a href="#" class="nk-menu-link nk-menu-toggle">
                              <span class="nk-menu-icon"><em class="icon ni ni-layers-fill"></em></span>
                              <span class="nk-menu-text">الأقسام</span>
                          </a>
                          <ul class="nk-menu-sub">
                              <li class="nk-menu-item">
                                  <a href="{{aurl('categories')}}" class="nk-menu-link"><span class="nk-menu-text">عرض الكل</span></a>
                              </li>
                              <li class="nk-menu-item">
                                  <a href="{{aurl('categories/create')}}" class="nk-menu-link"><span class="nk-menu-text">{{trans('admin.create')}}</span></a>
                              </li>
                          </ul><!-- .nk-menu-sub -->
                      </li><!-- .nk-menu-item -->
                    @endif

                    <!--products_start_route-->
                    @if(admin()->user()->role("products_show"))
                      <!-- .nk-menu-item -->
                      <li class="nk-menu-item has-sub">
                          <a href="#" class="nk-menu-link nk-menu-toggle">
                              <span class="nk-menu-icon"><em class="icon ni ni-card-view"></em></span>
                              <span class="nk-menu-text">{{trans('admin.products')}}</span>
                          </a>
                          <ul class="nk-menu-sub">
                              <li class="nk-menu-item">
                                  <a href="{{url(request()->segment('1').'/products')}}" class="nk-menu-link"><span class="nk-menu-text">{{trans('admin.all')}}</span></a>
                              </li>
                              <li class="nk-menu-item">
                                  <a href="{{url(request()->segment('1').'/products/create')}}" class="nk-menu-link"><span class="nk-menu-text">{{trans('admin.create')}}</span></a>
                              </li>
                          </ul><!-- .nk-menu-sub -->
                      </li><!-- .nk-menu-item -->
                    @endif
                    <!--products_end_route-->

                    <!--settings_start_route-->
                    @if(admin()->user()->role("settings_show"))
                      <!-- .nk-menu-item -->
                        <li class="nk-menu-item">
                            <a href="{{aurl('settings')}}" class="nk-menu-link">
                                <span class="nk-menu-icon"><em class="icon ni ni-puzzle-fill"></em></span>
                                <span class="nk-menu-text">{{trans('admin.settings')}}</span>
                            </a>
                        </li>
                    @endif

                  </ul><!-- .nk-menu -->
              </div><!-- .nk-sidebar-menu -->
          </div><!-- .nk-sidebar-content -->
      </div><!-- .nk-sidebar-element -->
  </div>
  <!-- sidebar @e -->
