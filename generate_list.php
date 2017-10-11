<?=$this->load->view('layout/header') ?>

<div class="row">
    <div class="col-lg-12">
        <?php
        echo $this->session->userdata('message');
        $this->session->unset_userdata('message');
        ?>
    </div>
    <!-- /.col-lg-12 -->
</div>

<div class="row">
    <div class="col-xs-12">

        <h3 class="header smaller lighter blue">Generated List</h3>

        <div class="clearfix">
            <div class="pull-right tableTools-container"></div>
        </div>
        <div class="table-header">
            View Applicants
        </div>

        <form id="applicant_form" method="post" action="#" >

            <div class="table-responsive">

                <table id="applicant_form_table" class="table table-hover table-bordered table-striped">

                    <thead>
                    <tr>
<!--                    <th class="center">-->
<!--                        <label class="pos-rel">-->
<!--                            <input type="checkbox" class="ace" />-->
<!--                            <span class="lbl"></span>-->
<!--                        </label>-->
<!--                    </th>-->

                    <th rowspan="2">Sr #</th>
                    <th rowspan="2">Roll No</th>
                    <th rowspan="2">Name</th>
                    <th rowspan="2">F/Name</th>
                    <th rowspan="2">Address</th>
                    <th rowspan="2">DOB</th>
                    <th rowspan="2">HT</th>
                    <th rowspan="2">Edn</th>
                    <th rowspan="2">Written<br>Test</th>
<!--                    <th>1 Mile<br>Run</th>-->
<!--                    <th>Push<br>Ups</th>-->
<!--                    <th>Chin<br>Ups</th>-->
<!--                    <th>Sit<br>Ups</th>-->
<!--                    <th>9 Ft<br>Ditch</th>-->
                    <th colspan="6" class="center">PET</th>
                    <th rowspan="2">Total</th>
                    <th rowspan="2">Spec<br>Edn</th>
                    <th rowspan="2">HT</th>
                    <th rowspan="2">Shaheed<br>FCWard</th>
                    <th rowspan="2">G.<br>Total</th>
                    <th rowspan="2">Inital<br>Med</th>
                    <th rowspan="2">Remarks</th>
                    <th rowspan="2">CNIC#</th>
                    <th rowspan="2">Contact</th>
                    </tr>

                    <tr>
                        <th>1Mile<br>Run</th>
                        <th>Push<br>Ups</th>
                        <th>Chin<br>Ups</th>
                        <th>Sit<br>Ups</th>
                        <th>9Ft<br>Ditch</th>
                        <th>Total</th>

                    </tr>

                    </thead>

                    <tbody>



                    <?php $index=0; ?>

                    <?php foreach ($applicants as $applicant): ?>

                        <tr>

<!--                            <td class="center">-->
<!--                                <label class="pos-rel">-->
<!--                                    <input name = "applicant_id[]" type="checkbox"  id="checkbox[]" value="--><?php //echo $applicant['applicant_id']; ?><!--" class="ace">-->
<!--                                    <span class="lbl"></span>-->
<!--                                </label>-->
<!--                            </td>-->

                            <td><?=$index+1 ?></td>
                            <td><?=$applicant['roll_no']?></td>
                            <td><?=$applicant['full_name']?></td>
                            <td><?=$applicant['father_name']?></td>
                            <td><?=$applicant['address']?></td>
                            <td><?=$applicant['dob']?></td>
                            <td><?=$applicant['height']?></td>
                            <td><?=$applicant['education']?></td>
                            <td><?=$applicant['written_test']?></td>
                            <td><?=$applicant['mile_run']?></td>
                            <td><?=$applicant['push_ups']?></td>
                            <td><?=$applicant['chin_ups']?></td>
                            <td><?=$applicant['sit_ups']?></td>
                            <td><?=$applicant['ditch9ft']?></td>
                            <td><?=$applicant['pet_total']?></td>
                            <td><?=$applicant['pet_total'] + $applicant['written_test']?></td>
                            <td><?=$applicant['spec_edn_points']?></td>
                            <td><?=$applicant['ht_points']?></td>
                            <td><?= ($applicant['fcward'] ? 'Yes' : 'No')?></td>
                            <td><?=$applicant['grand_total']?></td>
                            <td><?=$applicant['med_result']?></td>
                            <td><?=$applicant['remarks']?></td>
                            <td><?=$applicant['cnic']?></td>
                            <td><?=$applicant['cell_no']?></td>
                        </tr>

                    <?php $index++;?>
                    <?php endforeach;?>

                    </tbody>

                </table>

            </div>

        </form>

    </div><!-- /.col -->
</div><!-- /.row -->

<div class="modal fade" id="add-medical-info-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Add Medical Info</h4>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-12">

                        <div class="col-lg-8">
                            <form id="add_medical_info_form" action="<?=site_url('superadmin/applicant/add_medical_info')?>" method="post">
                                <div class="form-group">
                                    <label>Height</label>
                                    <input type="text" class="form-control" name="height">
                                </div>
                                <div class="form-group">
                                    <label>Chest</label>
                                    <input type="text" class="form-control" name="chest">
                                </div>
                                <div class="form-group">
                                    <label>Heart</label>
                                    <input type="text" class="form-control" name="heart">
                                </div>
                                <div class="form-group">
                                    <label>Vision</label>
                                    <input type="text" class="form-control" name="vision">
                                </div>
                                <div class="form-group">
                                    <label>Weight</label>
                                    <input type="text" class="form-control" name="weight">
                                </div>
                                <div class="form-group">
                                    <label>E.N.T</label>
                                    <input type="text" class="form-control" name="ent">
                                </div>
                                <div class="form-group">
                                    <label>Result</label>
                                    <label class="radio-inline">
                                        <input checked type="radio" name="result" value="fit">Fit
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="result" value="unfit">UnFit
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label>Remarks</label>
                                    <input type="text" class="form-control" name="remarks">
                                </div>
                                <input type="hidden" name="job_id" value="">
                                <input type="hidden" name="applicant_id" value="">
                                <button type="submit" class="btn btn-primary">Add</button>
                            </form>
                        </div>

                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default btn_cancel_modal" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    jQuery(function($) {
        //initiate dataTables plugin
        var myTable =
            $('#applicant_form_table')
//            .wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
                .DataTable( {
                    bAutoWidth: false,
//                    "aoColumns": [
//                        { "bSortable": false },
//                        null,null,null, null,null, null,null,
//                        { "bSortable": false },
//                        { "bSortable": false }
//                    ],
                    "aaSorting": [],


                    //"bProcessing": true,
                    //"bServerSide": true,
                    //"sAjaxSource": "http://127.0.0.1/table.php"	,

                    //,
                    //"sScrollY": "200px",
                    "bPaginate": false,

                    //"sScrollX": "100%",
                    //"sScrollXInner": "120%",
                    //"bScrollCollapse": true,
                    //Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
                    //you may want to wrap the table inside a "div.dataTables_borderWrap" element

                    //"iDisplayLength": 50


                    select: {
//                        style: 'multi'
                    }
                } );

        $.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';

        new $.fn.dataTable.Buttons( myTable, {
            buttons: [
                //'copy', 'csv', 'excel', 'pdf', 'print',
                {
                    "extend": "colvis",
                    "text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
                    "className": "btn btn-white btn-primary btn-bold",
                    columns: ':not(:first):not(:last)'
                },
                {
                    "extend": "copy",
                    "text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "csv",
                    "text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "excel",
                    "text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "pdf",
                    "text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "print",
                    "text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
                    "className": "btn btn-white btn-primary btn-bold",
                    autoPrint: false,
                    message: '',
                    exportOptions: {
                    }
                }
            ]
        } );
        myTable.buttons().container().appendTo( $('.tableTools-container') );

//        myTable.on( 'select', function ( e, dt, type, index ) {
//            if ( type === 'row' ) {
//                $( myTable.row( index ).node() ).find('input:checkbox').prop('checked', true);
//            }
//        } );
//        myTable.on( 'deselect', function ( e, dt, type, index ) {
//            if ( type === 'row' ) {
//                $( myTable.row( index ).node() ).find('input:checkbox').prop('checked', false);
//            }
//        } );


        /////////////////////////////////
        //table checkboxes
        $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

        //select/deselect all rows according to table header checkbox
        $('#applicant_form_table > thead > tr > th input[type=checkbox], #fields_table_wrapper input[type=checkbox]').eq(0).on('click', function(){
            var th_checked = this.checked;//checkbox inside "TH" table header

            $('#applicant_form_table').find('tbody > tr').each(function(){
                var row = this;
                if(th_checked) myTable.row(row).select();
                else  myTable.row(row).deselect();
            });
        });

        //select/deselect a row when the checkbox is checked/unchecked
        $('#applicant_form_table').on('click', 'td input[type=checkbox]' , function(){
            var row = $(this).closest('tr').get(0);
            if(this.checked) myTable.row(row).deselect();
            else myTable.row(row).select();
        });



        $(document).on('click', '#fields_table .dropdown-toggle', function(e) {
            e.stopImmediatePropagation();
            e.stopPropagation();
            e.preventDefault();
        });


        //And for the first simple table, which doesn't have TableTools or dataTables
        //select/deselect all rows according to table header checkbox
        var active_class = 'active';
        $('#applicant_form_table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
            var th_checked = this.checked;//checkbox inside "TH" table header

            $(this).closest('table').find('tbody > tr').each(function(){
                var row = this;
                if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
                else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
            });
        });

        //select/deselect a row when the checkbox is checked/unchecked
        $('#applicant_form_table').on('click', 'td input[type=checkbox]' , function(){
            var $row = $(this).closest('tr');
            if($row.is('.detail-row ')) return;
            if(this.checked) $row.addClass(active_class);
            else $row.removeClass(active_class);
        });



        /********************************/
        //add tooltip for small view action buttons in dropdown menu
        $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

        //tooltip placement on right or left
        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
            return 'left';
        }




        /***************/
        $('.show-details-btn').on('click', function(e) {
            e.preventDefault();
            $(this).closest('tr').next().toggleClass('open');
            $(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
        });
        /***************/


         //add horizontal scrollbars to a simple table
//         $('#applicant_form_table').css({'max-width': '100%'}).wrap('<div style="width: 100%;" />').parent().ace_scroll(
//         {
//           horizontal: true,
//           styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
//           size: 2000,
//           mouseWheelLock: true
//         }
//         ).css('padding-top', '12px');



    })
</script>

<script>

    var $medical_form = $("#add_medical_info_form");
    var $clicked_btn_add_medical;

    $(document).on('click' , '.btn_add_medical_info', function(){
        $medical_form.trigger('reset');
        $medical_form.find("input[name=applicant_id]").val($(this).attr('data-applicant-id'));
        $medical_form.find("input[name=job_id]").val($(this).attr('data-job-id'));
        $(this).blur();
        $clicked_btn_add_medical = $(this);
    });

    $(document).on('click' , '.btn_cancel_modal', function(){
        $medical_form.trigger('reset');
        $medical_form.data('formValidation').resetForm();
    });

//    $('#add-medical-info-modal').on('hidden.bs.modal', function () {
//        $('.btn_cancel_modal').click();
//    });

    $(document).ready(function () {

        $('#add_medical_info_form')
            .formValidation({
                framework: 'bootstrap',
                icon: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    height: {
                        validators: {
                            notEmpty: {
                                message: 'Required Field'
                            },
                            stringLength: {
                                max: 100,
                                message: 'Value is too long'
                            }
                        }
                    },

                    chest: {
                        validators: {
                            notEmpty: {
                                message: 'Required Field'
                            },
                            stringLength: {
                                max: 100,
                                message: 'Value is too long'
                            }
                        }
                    },

                    heart: {
                        validators: {
                            notEmpty: {
                                message: 'Required Field'
                            },
                            stringLength: {
                                max: 100,
                                message: 'Value is too long'
                            }
                        }
                    },

                    vision: {
                        validators: {
                            notEmpty: {
                                message: 'Required Field'
                            },
                            stringLength: {
                                max: 100,
                                message: 'Value is too long'
                            }
                        }
                    },

                    weight: {
                        validators: {
                            notEmpty: {
                                message: 'Required Field'
                            },
                            stringLength: {
                                max: 100,
                                message: 'Value is too long'
                            }
                        }
                    },

                    ent: {
                        validators: {
                            notEmpty: {
                                message: 'Required Field'
                            },
                            stringLength: {
                                max: 100,
                                message: 'Value is too long'
                            }
                        }
                    }
                }
            })
            .on('success.form.fv', function(e) {
                // Prevent form submission
                e.preventDefault();

                var $form = $(e.target),
                    fv    = $form.data('formValidation');

                $.ajax({
                    url: $form.attr('action'),
                    type: 'POST',
                    data: $form.serialize(),
                    dataType    : 'json',
                    encode          : true,
                    success: function(result) {
                        $('#add-medical-info-modal').modal('toggle');
                        if(result != ''){
                            $('.page_message').html(result);
                            $clicked_btn_add_medical.remove();
                        }
                        $form.trigger('reset');
                        $form.data('formValidation').resetForm();

                    }
                });
            })
            .on('err.validator.fv', function(e, data) {

                data.element
                    .data('fv.messages')
                    .find('.help-block[data-fv-for="' + data.field + '"]').hide()
                    .filter('[data-fv-validator="' + data.validator + '"]').show();
            });


        $('.menu-item-6').addClass('active');
    });
</script>


<?=$this->load->view('layout/footer') ?>


