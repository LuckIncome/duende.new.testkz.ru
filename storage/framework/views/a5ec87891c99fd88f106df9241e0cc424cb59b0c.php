<!-- Сайд-бар -->
    <div class="sidebar" :class="{'sidebar-show': isSidebar}">
        <div class="sidebar__head">
            <a href="/">
                <img src="<?php echo e(Voyager::image(setting('site.favicon'))); ?>" alt="logo">
            </a>
            <button class="sidebar__toggle" @click="toggleWrapper">
                <i class="bi bi-x"></i>
            </button>
        </div>

        <?php echo e(menu('header_menu','vendor.voyager.menu.sidebar_menu')); ?>


        <div class="sidebar__network">
            <?php $__currentLoopData = $socials; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $social): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <a href="<?php echo e($social->link); ?>"><img src="<?php echo e(Voyager::image($social->icon)); ?>" alt="<?php echo e($social->value); ?>"></a>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
<!-- /Сайд-бар --><?php /**PATH C:\Users\jandos\Desktop\OpenServer\domains\duende.new.testkz.ru\resources\views/partials/sidebar.blade.php ENDPATH**/ ?>