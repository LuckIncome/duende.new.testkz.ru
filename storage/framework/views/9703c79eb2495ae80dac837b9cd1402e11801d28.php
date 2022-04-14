<ul class="sidebar__menu">
  <?php
    if (Voyager::translatable($items)) {
        $items = $items->load('translations');
    }
  ?>
  <?php $__currentLoopData = $items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <?php
      $originalItem = $item;
      if (Voyager::translatable($item)) {
          $item = $item->translate($options->locale);
      }
      $isActive = null;
      $styles = null;
      $icon = null;
      // Background Color or Color
      if (isset($options->color) && $options->color == true) {
          $styles = 'color:'.$item->color;
      }
      if (isset($options->background) && $options->background == true) {
          $styles = 'background-color:'.$item->color;
      }
      // Check if link is current
      if(url($item->link()) == url()->current() || \Str::contains(url()->current(),$item->link())){
          $isActive = 'active';
      }
  ?> 
    <li><a href="<?php echo e(url($item->link())); ?>" class="<?php echo e($isActive); ?>" @click="toggleWrapper"><?php echo e($item->title); ?></a></li>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</ul><?php /**PATH C:\Users\jandos\Desktop\OpenServer\domains\duende.new.testkz.ru\resources\views/vendor/voyager/menu/sidebar_menu.blade.php ENDPATH**/ ?>