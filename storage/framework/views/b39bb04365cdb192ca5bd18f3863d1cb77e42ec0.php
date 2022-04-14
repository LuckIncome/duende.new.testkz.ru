<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.js" integrity="sha512-7KzSt4AJ9bLchXCRllnyYUDjfhO2IFEWSa+a5/3kPGQbr+swRTorHQfyADAhSlVHCs1bpFdB1447ZRzFyiiXsg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/maska@latest/dist/maska.js"></script>
<script src="<?php echo e(asset('assets/js/carousel.js')); ?>"></script>
<script src="<?php echo e(asset('assets/js/script.js')); ?>"></script>

<script type="text/javascript">
$(document).ready(function(){
    $("#feedback_form").on('submit', function(event) {
    event.preventDefault();
    let form = $(this);
    let action = form.attr("action");
    let type = form.attr("method");
    let _token = $('input[name="_token"]').val();
    let headers = {
          headers: {
              'X-CSRF-TOKEN': _token,
          },
        };
    let fd = new FormData(form[0]);
    let $inputs = form.find("input, select, button, textarea");
    axios.post(action, fd, headers).then(res => {
        if (res.status === 200) {
          //alert('asd');
          $('#m-thanks').modal('show');
        } 
        $inputs.prop("disabled", false);
        $inputs.val("");
        $inputs.prop("checked",false);
      }).catch((error) => console.log(error.response.data));   
    });
});
let token = document.head.querySelector('meta[name="csrf-token"]');
window.axios.defaults.headers.common['X-CSRF-TOKEN'] = token.content;
</script><?php /**PATH C:\Users\jandos\Desktop\OpenServer\domains\duende.new.testkz.ru\resources\views/partials/scripts.blade.php ENDPATH**/ ?>