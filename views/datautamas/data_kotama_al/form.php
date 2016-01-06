<!-- PAGE table -->
<div class="row">
    <div class="col-md-12">
        <!-- BASIC -->
        <div class="box border green">
            <div class="box-title">
                <h4><i class="fa fa-reorder"></i>Tambah Data Kotama TNI AL</h4>
                <div class="tools hidden-xs">

                </div>
            </div>
            <div class="box-body big">
                <form class="form-horizontal row-border"  method="post" id="form">
                    <div class="form-group">
                        <label class="col-md-3 control-label">Nama Kotama TNI AL</label>
                        <div class="col-md-5">
                            <input  class="form-control" type="text" name="nama_kotamal" id="name" placeholder="Ketik Nama Kotama TNI AL Baru Disini" value="<?php echo (empty($data['data_kotamal']->nama_kotamal) ?  "" : $data['data_kotamal']->nama_kotamal)?>">
                        </div>
                    </div>

            </div>

                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-12">
                                <div id="loading"></div>
                                <input type="hidden" name="created_date" id="created_date" value="<?php echo $data['created_date'];?>">
                                <input type="hidden" name="created_by" id="created_by" value="<?php echo $data['created_by'];?>">
                                <input type="submit" class="btn btn-primary btn-lg pull-left" onclick="sends(this);" id="send" value="Submit"/>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- /BASIC -->
<div class="separator"></div>
<script type="text/javascript">
var url = "<?php echo site_url(); ?>";

function sends(){
    $('#form').validate({
        rules: {
            /* destination: {
                required: true
            }, */
            nama_kotamal: {
                required: true
            },

        },
        highlight: function(element) {
            $(element).closest('.control-group').removeClass('success').addClass('error');
        },
        success: function(element) {
            element
            .text('OK!').addClass('valid')
            .closest('.control-group').removeClass('error').addClass('success');
        },
        submitHandler: function(form){
            $.ajax({
                <?php if(empty($data['data_kotamal']->id)){?>
                url: url+'execute/save/tt_kotamal',
                <?php }else{?>
                url: url+"execute/update/tt_kotamal/id/<?php echo $data['data_kotamal']->id;?>",
                <?php }?>
                type: "POST",
                dataType:"json",
                data: $("#form").serialize(),
                beforeSend: function(){
                    $("#send").addClass('disabled');
                    $("#loading").text('Loading...');
                },
                success:function(data){
                    new PNotify({
                        title: 'Data Kotama TNI AL',
                        text: 'Berhasil disimpan',
                        animation: {
                            effect_in: 'show',
                            effect_out: 'slide'
                        },
                        type : "success",
                        styling: 'bootstrap3'
                    });


                    //clear();
                    $("#loading").remove();
                    $('#form').trigger("reset");
                    $("#send").removeClass('disabled');
                    setInterval(function() {

                        window.location= url+'datautama/tnial';
                    }, 1000);
                },
                error: function(message){

                    new PNotify({
                        title: message.status,
                        text: message.statusText,
                        animation: {
                            effect_in: 'show',
                            effect_out: 'slide'
                        },
                        styling: 'bootstrap3',
                        type : "error",
                    });
                    $("#loading").remove();
                    $("#send").removeClass('disabled');
                }
            });
        },
        debug:true
    });
}
$('#date').datepicker({
    dateFormat: "yy-mm-dd",
    startView: 1,
    autoclose: true
});

$("#personil_id").select2({ allowClear: !0});
function countChar(val) {
    var len = val.value.length;
        $('#charNum').text(len+" Character");

};
</script>

<style type="text/css">
    label.valid {
        width: 24px;
        height: 24px;
        display: inline-block;
        text-indent: -9999px;
    }
    label.error {
        font-weight: bold;
        color: red;
        padding: 2px 8px;
        margin-top: 1px;
    }
</style>
