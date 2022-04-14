<!-- Модалки -->
<div class="modal fade" id="m-thanks" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center text-dark">
                  <?php echo app('translator')->get('general.thanks'); ?>
                </div>
                <div class="text-center text-dark">
                    <?php echo app('translator')->get('general.requestSend'); ?> <br>
                    <?php echo app('translator')->get('general.callbackAns'); ?>
                </div>               
            </div>
            <div class="modal-footer d-flex justify-content-center">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><?php echo app('translator')->get('general.close'); ?></button>
            </div>
        </div>
    </div>
</div>        
<!-- /Модалки --><?php /**PATH C:\Users\jandos\Desktop\OpenServer\domains\duende.new.testkz.ru\resources\views/partials/modals.blade.php ENDPATH**/ ?>