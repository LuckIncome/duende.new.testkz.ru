
<?php $__env->startSection('page_title',(strlen($category_one->name) > 1 ? $category_one->name : '')); ?>
<?php $__env->startSection('seo_title', (strlen($category_one->seo_title) > 1 ? $category_one->seo_title : '')); ?>
<?php $__env->startSection('meta_keywords',(strlen($category_one->meta_keywords) > 1 ? $category_one->meta_keywords : '')); ?>
<?php $__env->startSection('meta_description', (strlen($category_one->meta_description) > 1 ? $category_one->meta_description : '')); ?>
<?php $__env->startSection('image', ''); ?>
<?php $__env->startSection('url',url()->current()); ?>
<?php $__env->startSection('page_class','page'); ?>
<?php $__env->startSection('content'); ?>

<section class="navigation">
    <div class="container">
        <h1>#<?php echo e($category_one->name); ?></h1>
    </div>
</section>

<section class="gallery">
    <div class="container">
        <div class="items">
        	<?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $c): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        		<?php $__currentLoopData = $c->project; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $p): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        		<a href="<?php echo e(route('projects.show.project', ['projects' => $c->slug, 'article' => $p->slug])); ?>">
        			<img src="<?php echo e(Voyager::image($p->image)); ?>" alt="<?php echo e($p->title); ?>">      
	                <span><?php echo e($p->title); ?></span>
            	</a>
            	<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>       
        	<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>          
        </div>
    </div>
</section>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('partials.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\jandos\Desktop\OpenServer\domains\duende.new.testkz.ru\resources\views/pages/cat/show.blade.php ENDPATH**/ ?>