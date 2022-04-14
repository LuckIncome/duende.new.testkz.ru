
<?php $__env->startSection('page_title',(strlen($project->title) > 1 ? $project->title : '')); ?>
<?php $__env->startSection('seo_title', (strlen($project->seo_title) > 1 ? $project->seo_title : '')); ?>
<?php $__env->startSection('meta_keywords',(strlen($project->meta_keywords) > 1 ? $project->meta_keywords : '')); ?>
<?php $__env->startSection('meta_description', (strlen($project->meta_description) > 1 ? $project->meta_description : '')); ?>
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
        <p><?php echo $project->excerpt; ?></p>
        <div class="gallery-items">
            <?php if($project->images): ?>
            	<?php $__currentLoopData = json_decode($project->images); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $i): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            		<a href="<?php echo e(Voyager::image($i)); ?>">
    	                <img src="<?php echo e(Voyager::image($i)); ?>" alt="<?php echo e($project->title); ?>">
                	</a>
            	<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>    
            <?php else: ?>
                <h2>Контент еще не загружен!<h2>
        	<?php endif; ?>
        </div>
    </div>
</section>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('partials.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\jandos\Desktop\OpenServer\domains\duende.new.testkz.ru\resources\views/pages/cat/project_show.blade.php ENDPATH**/ ?>