
<?php $__env->startSection('page_title',(strlen($page->title) > 1 ? $page->title : '')); ?>
<?php $__env->startSection('seo_title', (strlen($page->seo_title) > 1 ? $page->seo_title : '')); ?>
<?php $__env->startSection('meta_keywords',(strlen($page->meta_keywords) > 1 ? $page->meta_keywords : '')); ?>
<?php $__env->startSection('meta_description', (strlen($page->meta_description) > 1 ? $page->meta_description : '')); ?>
<?php $__env->startSection('image',$page->thumbic); ?>
<?php $__env->startSection('url',url()->current()); ?>
<?php $__env->startSection('page_class','page'); ?>
<?php $__env->startSection('content'); ?>



<section class="banner">
    <img src="<?php echo e(asset('assets/images/icons/figure-1.png')); ?>" class="figure" alt="icon">
    <div class="container">
        <div class="mikkelange">
            <img src="<?php echo e(asset('assets/images/mikkelange.png')); ?>" alt="img">
            <transition name="fade">
                <img src="<?php echo e(asset('assets/images/mikkelange-animation.png')); ?>" class="img" v-if="isToggle" alt="img">
            </transition>
        </div>
        <div class="banner__info">
            <h2 class="title">
                <img src="<?php echo e(asset('assets/images/icons/about-text.svg')); ?>" alt="icon">
            </h2>
            <div class="text" :class="{'text-show':isAbout}">
                <?php echo $text->text; ?>

                <div v-if="isAbout">
                    <?php echo $text->second_text; ?>

                </div>
                <button @click="isAbout = !isAbout">{{ !isAbout ? 'Далeе ' : 'Закрыть ' }}<i class="bi bi-arrow-right"></i></button><img src="<?php echo e(asset('assets/images/icons/quotes.svg')); ?>" class="img" alt="quotes">
            </div>
        </div>
    </div>
</section>

<section class="advantages">
    <div class="container">
        <?php $__currentLoopData = $advantages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $advantage): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="advantage">
            <myprogress num="<?php echo e($advantage->number); ?>" 
                <?php if($advantage->id == 1): ?> prog="490" up1="10" up2="60" ref="childComponent1" <?php endif; ?>
                <?php if($advantage->id == 2): ?> prog="520" up1="10" up2="8" ref="childComponent2" <?php endif; ?>
                <?php if($advantage->id == 3): ?> prog="490" up1="10" up2="40" ref="childComponent3" <?php endif; ?>
                ></myprogress>
                <p><?php echo e($advantage->excerpt); ?></p>     
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
</section>

<section class="projects" id="projects">
    <img src="<?php echo e(asset('assets/images/icons/figure-2.svg')); ?>" class="figure" alt="figure-2">
    <div class="container">
        <!-- <h2 class="title">PROJECTS</h2> -->
        <h2 class="title"><img src="<?php echo e(asset('assets/images/icons/projects-text.svg')); ?>" alt="projects-text"></h2>
        <div class="items">
            <?php $__currentLoopData = $projects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $project): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php $__currentLoopData = $project->project; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pro): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <a href="<?php echo e(route('projects.show.project', ['projects' => $project->slug, 'article' => $pro->slug])); ?>">
                        <img src="<?php echo e(Voyager::image($pro->image)); ?>" alt="<?php echo e($pro->title); ?>">
                        <span><?php echo e($pro->title); ?></span>
                    </a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <div>
                <?php $__currentLoopData = $project_one->project; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $p): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <a href="<?php echo e(route('projects.show.project', ['projects' => $project_one->slug, 'article' => $p->slug])); ?>">
                    <img src="<?php echo e(Voyager::image($p->image)); ?>" alt="<?php echo e($p->title); ?>">
                    <span><?php echo e($p->title); ?></span>
                </a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <a href="<?php echo e(route('pages.get',$pages['order']->first()->slug)); ?>"><?php echo app('translator')->get('general.leaveRequest'); ?></a>
            </div>
        </div>
    </div>
</section>

<section class="services" id="services">
    <div class="container">
        <!-- <h2 class="title">services</h2> -->
        <h2 class="title"><img src="<?php echo e(asset('assets/images/icons/services-text.svg')); ?>" alt="services-text"></h2>
        <div class="items">
            <a href="/design" class="item wow">
                <div class="images">
                    <img src="<?php echo e(asset('assets/images/services-1.png')); ?>" class="img" alt="services-1">
                </div>
                <h3>#DESIGN</h3>
            </a>
            <a href="/event" class="item wow">
                <div class="images">
                    <img src="<?php echo e(asset('assets/images/services-2.png')); ?>" class="img" alt="services-2">
                </div>
                <h3>#EVENT</h3>
            </a>
            <a href="/trademarketing" class="item wow">
                <div class="images">
                    <img src="<?php echo e(asset('assets/images/services-3.png')); ?>" class="img" alt="services-3">
                </div>
                <h3>#TRADEMARKETING</h3>
            </a>
        </div>
        <div class="hr"></div>
    </div>
</section>

<section class="partners">
    <div class="container">
        <div class="partners__wrapper">

            <div class="partners-slider">
                <?php $__currentLoopData = $partners; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $partner): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <a href="<?php echo e($partner->slug); ?>">
                    <img src="<?php echo e(Voyager::image($partner->image_bg)); ?>" alt="<?php echo e($partner->alt); ?>">
                    <img src="<?php echo e(Voyager::image($partner->image)); ?>" alt="<?php echo e($partner->alt); ?>">
                </a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>

            <div class="partners__arrows-wrapper">
                <button class="partners__arrows partners__arrows-left">
                    <i class="bi bi-chevron-left"></i>
                </button>
                <button class="partners__arrows partners__arrows-right">
                    <i class="bi bi-chevron-right"></i>
                </button>
            </div>
        </div>
            
    </div>
</section>

<section class="contact" id="contact">
    <img src="<?php echo e(asset('assets/images/icons/figure-3.svg')); ?>" class="figure" alt="figure-3">
    <div class="container">
        <!-- <h2 class="title">contact</h2> -->
        <h2 class="title"><img src="<?php echo e(asset('assets/images/icons/contact-text.svg')); ?>" alt="contact-text"></h2>
        <maps></maps>
    </div>
</section>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('partials.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\jandos\Desktop\OpenServer\domains\duende.new.testkz.ru\resources\views/pages/home.blade.php ENDPATH**/ ?>