<div class="loader" :class="{'loader-done' : !isOnload}">
    <loader></loader>
</div>

<?php if(\Request::is('/')): ?>  
    <div class="preview">
        <loader></loader>
        <a href="#header"><img src="<?php echo e(asset('assets/images/icons/muse.svg')); ?>" alt="muse"></a>
        <div class="anim"></div>
    </div>
<?php endif; ?>

<header class="header" id="header" :class="{'header-index' : isIndex}">
    <div class="container">
        <button class="header__toggle" @click="toggleSidebar">
            <i class="bi bi-list"></i>
        </button>
        
        <?php echo e(menu('header_menu','vendor.voyager.menu.header_menu')); ?>


        <ul class="header__lang">                             
            <li>
                <a href="/locale/ru" <?php if(session()->get('locale') == 'ru'): ?> class="active" <?php endif; ?>>
                    RUS
                </a>
            </li>
            <li>
                <a href="/locale/en" <?php if(session()->get('locale') == 'en'): ?> class="active" <?php endif; ?>>
                    ENG
                </a>
            </li>
        </ul>
    </div>  
</header>
<?php /**PATH C:\Users\jandos\Desktop\OpenServer\domains\duende.new.testkz.ru\resources\views/partials/header.blade.php ENDPATH**/ ?>