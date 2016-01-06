
<!-- PAGE table -->
<div class="row">
    <div class="col-md-12">
        <!-- BOX -->
        <a  class="btn btn-info btn-md pull-right" href="<?php echo site_url('datautama/korpsmatdar/form');?>">+ Tambah</a>
                <br/>
                <br/>
                <br/>
        <div class="box border blue">
            <div class="box-title">
                <h4><i class="fa fa-table"></i>Data Korps Matra Darat</h4>
            </div>
            <div class="box-body">
                <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="data">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Korps Matra Darat</th>
                            <th>Dibuat Tanggal</th>
                            <th>Dibuat Oleh</th>
                            <th>Opsi Data</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no =1; foreach($data_korpsdarat as $key=>$value){?>
                        <tr>
                            <td><?php echo $no;?></td>
                            <td>
                                <?php echo $value->nama_korpsdarat; ?></a>
                            </td>
                            <td><?php echo $value->created_date; ?></td>
                            <td>
                            <?php
                            $res=$value->created_by;
                            $query = $this->db->query("SELECT*FROM auth_users WHERE id=".$res." ;");

                                foreach ($query->result() as $row)
                                {
                                   echo $row->username;
                                }

                            ?>
                          </td>

                            <td>
                                <a  title="Edit" class="btn btn-warning btn-xs" href="<?php echo site_url('datautama/korpsmatdar/form/'.base64_encode($value->id))?>">Edit</a>
                                <button title="Delete" class="btn btn-danger btn-xs" data-id="<?php echo $value->id;?>" onclick="del(this);">Hapus</button>

                            </td>
                        </tr>
                        <?php $no++;} ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- /PAGE table -->
<div class="separator"></div>
<div class="footer-tools">
    <span class="go-top"><i class="fa fa-chevron-up"></i> Top </span>
</div>

<script type="text/javascript">
var url = "<?php echo site_url();?>";

$(document).ready(function() {
    $('#data').dataTable({
        'sPaginationType': 'bs_full',
        //"bProcessing": true,
        //"bServerSide": true,
        //"sAjaxSource": url+"smsgateway/messages/load_inbox",
        //"sServerMethod": "POST",
        "aaSorting": [[1, "asc"]],
        "iDisplayLength": 10,
        /* "aoColumns" : [

            {"mData": "RecipientID"},
            {"mData": "ReceivingDateTime"},
            {"mData": "SenderNumber"},
            {"mData": "TextDecoded"},
            {"mData": "show",
                "mRender" : function ( data, type, full ) {
                    var link = '<a  title="Balas"class="btn btn-warning btn-xs" href='+url+'smsgateway/messages/balas/'+full.ID+'>Balas</a> || '+
                    '<button title="Delete" class="btn btn-danger btn-xs" data-id='+full.ID+' onclick="del(this);">Hapus</button>';
                    return link;
               }
            },
        ], */
    });

    $('#data').each(function(){
        var datatable = $(this);
        var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
        search_input.attr('placeholder', 'Search');
        search_input.addClass('form-control input-sm');
        var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
        length_sel.addClass('form-control input-sm');
    });
    $('#data').delegate('.checkbox','change',function() {
        var i = $(this).attr('data-id');
        var id = $(this).attr('data-id');
        if(this.checked){
            $.ajax({
                url: url+'unit/unit/execute/active',
                type: 'post',
                data: 'active=0&id='+i,
                success: function(result)
                {
                    $('span-'+id).removeClass('label-default ').addClass('label-info');
                    $('span-'+id).html('Active');
                    window.location.reload();
                }
            });
        }else {
            $.ajax({
                url: url+'unit/unit/execute/active',
                type: 'post',
                data: 'active=1&id='+i,
                success: function(result)
                {
                    $('span-'+id).removeClass('label-info ').addClass('label-default');
                    $('span-'+id).html('Inactive');
                    window.location.reload();
                }
            });
        }
    });
});
function del(btn)
{
    var cek = confirm("Apakah anda yakin akan menghapus data ini??");
    if(cek==false)
    {
        return false;
    }
    else
    {
        var id = $(btn).attr('data-id');
        $.ajax({

            url: url+'execute/delete/tt_korpsdarat/id/'+id,
            type: "POST",
            data:{data_id:id},
            crossDomain:true,
            beforeSend: function(){
                $("#msg").html("loading");
            },
            complete : function(){
                $("#msg").html("Hapus Data Sukses");
            },
            success: function(data) {
                window.location.reload();
            },
        });
        return false;
    }
}
function update_status(btn){
    var cek = confirm("Apakah Anda yakin ?");
    if(cek==false)
    {
        return false;
    }
    else
    {
        var id = $(btn).attr('data-id');
        $.ajax({

            url: url+'execute/update/tt_korpsdarat/id/'+id,
            type: "POST",
            data:{status:"diajukan"},
            crossDomain:true,
            beforeSend: function(){
                $("#msg").html("loading");
            },
            complete : function(){
                $("#msg").html("delete Sukses");
            },
            success: function(data) {
                //$("#data").dataTable().fnClearTable(data);
                window.location.reload();
            },
        });
        return false;
    }
}
</script>
