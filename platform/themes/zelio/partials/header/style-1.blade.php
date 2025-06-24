@php
    $sidebarPanelSidebar = dynamic_sidebar('sidebar_panel_sidebar');
@endphp

<header>
    <nav class="navbar navbar-expand-lg navbar-light w-100 flex-nowrap z-999 p-0">
        @if($sidebarPanelSidebar)
            <a href="#" title="{{ __('Menu') }}" class="navbar-menu p-4 text-center square-100 menu-tigger icon_80 icon-shape d-none d-md-flex" data-bs-target=".offCanvas__info">
                <i class="ri-menu-2-line"></i>
            </a>
        @endif
        <div class="container py-3 px-0">
            <a class="navbar-brand d-flex main-logo align-items-center ms-lg-0 ms-md-5 ms-3" href="{{ BaseHelper::getHomepageUrl() }}">
                {{ Theme::getLogoImage(maxHeight: 40) }}
                @if ($siteName = theme_option('site_name'))
                    <span class="fs-4 ms-2">{{ $siteName }}</span>
                @endif
            </a>
            <div class="d-none d-lg-flex">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="main-menu">
                        {!! Menu::renderMenuLocation('main-menu', ['view' => 'main-menu', 'options' => ['class' => 'navbar-nav me-auto mb-2 mb-lg-0']]) !!}
                    </div>
                </div>
            </div>
            <div class="navbar-social d-flex align-items-center pe-5 pe-lg-0 me-5 me-lg-0">
                @if($socials = Theme::getSocialLinks())
                    <div class="d-md-flex d-none gap-3">
                        @foreach($socials as $social)
                            <a href="{{ $social->getUrl() }}" {{ $social->getAttributes() }}>
                                <x-core::icon :name="$social->getIcon()" />
                            </a>
                        @endforeach
                    </div>
                @endif
                <div class="burger-icon burger-icon-white border rounded-3">
                    <span class="burger-icon-top"></span>
                    <span class="burger-icon-mid"></span>
                    <span class="burger-icon-bottom"></span>
                </div>
            </div>
        </div>
        @if (theme_option('hide_theme_mode_switcher', 'no') !== 'yes')
            <div class="dark-light-switcher pe-10 pe-lg-0 pe-0 ps-md-5 ps-0 ps-lg-4 pe-lg-4 d-flex justify-content-center align-items-center icon_80 @@classList">
                <i class="ri-sun-fill text-warning"></i>
                <i class="ri-contrast-2-line text-white"></i>
            </div>
        @endif
    </nav>
    @if(! empty($sidebarPanelSidebar))
        <div class="offCanvas__info">
            <div class="offCanvas__close-icon menu-close">
                <button title="{{ __('Close') }}"><i class="ri-close-line"></i></button>
            </div>
            <div class="offCanvas__logo mb-5">
                <div class="mb-0"><span class="h3">{{ __('Get in touch') }}</span></div>
            </div>
            <div class="offCanvas__side-info mb-30">
                {!! $sidebarPanelSidebar !!}
            </div>
        </div>
    @endif
    <div class="offCanvas__overly"></div>
    <div class="mobile-header-active mobile-header-wrapper-style perfect-scrollbar button-bg-2">
        <div class="mobile-header-wrapper-inner">
            <div class="mobile-header-logo">
                <a class="d-flex main-logo align-items-center d-inline-flex" href="{{ BaseHelper::getHomepageUrl() }}">
                    {{ Theme::getLogoImage(logoKey: 'logo_dark', maxHeight: 40) }}
                    @if ($siteName = theme_option('site_name'))
                        <span class="fs-4 ms-2 text-dark">{{ $siteName }}</span>
                    @endif
                </a>
                <div class="burger-icon burger-icon-white border rounded-3">
                    <span class="burger-icon-top"></span>
                    <span class="burger-icon-mid"></span>
                    <span class="burger-icon-bottom"></span>
                </div>
            </div>
            <div class="mobile-header-content-area">
                <div class="perfect-scroll">
                    <div class="mobile-menu-wrap mobile-header-border">
                        <nav>
                            {!! Menu::renderMenuLocation('main-menu', ['view' => 'mobile-menu', 'options' => ['class' => 'mobile-menu font-heading ps-0']]) !!}
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
