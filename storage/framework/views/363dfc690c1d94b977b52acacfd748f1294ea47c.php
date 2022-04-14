<footer class="footer">
    <div class="container">
        <div class="cities">
            <div class="town">
                <h3><?php echo app('translator')->get('general.kazakhstan'); ?></h3>
                <p><?php echo app('translator')->get('general.almaty'); ?></p> 

                <?php $__currentLoopData = $phone_almaty; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pa): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <a href="tel:<?php echo e($pa->link); ?>"><?php echo e($pa->value); ?></a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                <a href="mailto:<?php echo e($email->value); ?>"><?php echo e($email->value); ?></a>

                <a target="_blank" href="<?php echo e($address_almaty->value); ?>">
                    <?php echo e($address_almaty->translate_value); ?>

                </a>

            </div>
            <div class="town">
                <h3><?php echo app('translator')->get('general.kazakhstan'); ?></h3>
                <p><?php echo app('translator')->get('general.astana'); ?></p>

                <?php $__currentLoopData = $phone_astana; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pas): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <a href="tel:<?php echo e($pas->link); ?>"><?php echo e($pas->value); ?></a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                <a href="mailto:<?php echo e($email->value); ?>"><?php echo e($email->value); ?></a>

                <a target="_blank" href="<?php echo e($address_astana->value); ?>">
                    <?php echo e($address_astana->translate_value); ?>

                </a>

            </div> 
        </div>
        <div class="network">
            <?php $__currentLoopData = $socials; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $social): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <a href="<?php echo e($social->link); ?>"><img src="<?php echo e(Voyager::image($social->icon)); ?>" alt="<?php echo e($social->value); ?>"></a>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</footer><?php /**PATH C:\Users\jandos\Desktop\OpenServer\domains\duende.new.testkz.ru\resources\views/partials/footer.blade.php ENDPATH**/ ?>