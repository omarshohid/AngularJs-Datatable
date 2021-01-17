var app = angular.module('MyApp', ['datatables', 'datatables.buttons']);
app.controller('homeCtrl', ['$scope', '$http', 'DTOptionsBuilder', 'DTColumnBuilder',
    function ($scope, $http, DTOptionsBuilder, DTColumnBuilder) {

        $sentimentArray = ['Positive', 'Neutral', 'Negative'];
        $sourceArray = ['Twitter', 'Facebook', 'Instagram', 'Reddit', 'Youtube', 'Forum', 'Blog', 'Comment', 'Web'];

        $scope.dtColumns = [
            //here We will add .withOption('name','column_name') for send column name to the server 
            DTColumnBuilder.newColumn("Id", "ID").withOption('name', 'Id'),
            DTColumnBuilder.newColumn("PartsName", "Parts Name").withOption('name', 'PartsName'),
            DTColumnBuilder.newColumn("PartsNo", "Parts No").withOption('name', 'PartsNo'),
            DTColumnBuilder.newColumn("Quantity", "Quantity").withOption('name', 'Quantity'),
            DTColumnBuilder.newColumn("SheetNo", "Sheet No").withOption('name', 'SheetNo'),
            DTColumnBuilder.newColumn("UnitPrice", "Unit Price").withOption('name', 'UnitPrice'),
            DTColumnBuilder.newColumn("Amount", "Amount").withOption('name', 'Amount'),
            DTColumnBuilder.newColumn("Supplier", "Supplier").withOption('name', 'Supplier')
        ]

        $scope.dtOptions = DTOptionsBuilder.newOptions().withOption('ajax', {
            dataSrc: "data",
            url: "/home/getdata",
            type: "POST"
        })
            .withOption('processing', true) //for show progress bar
            .withDOM('lBfrtip')
            .withOption('serverSide', true) // for server side processing
            .withPaginationType('full_numbers') // for get full pagination options // first / last / prev / next and page numbers
            .withDisplayLength(10) // Page size
            .withOption('aaSorting', [0, 'asc'])  // for default sorting column // here 0 means first column       
            .withButtons([
                //{
                //    extend: 'copy',
                //    text: '<i class="fa fa-files-o"></i> Copy',
                //    titleAttr: 'Copy'
                //},
                //{
                //    extend: 'print',
                //    text: '<i class="fa fa-print" aria-hidden="true"></i> Print',
                //    titleAttr: 'Print'
                //},
                {
                    extend: 'excel',
                    text: '<i class="fa fa-file-text-o"></i> Excel',
                    titleAttr: 'Excel'
                }
            ])
            .withOption('initComplete', function () {
                setTimeout(function () {
                    $scope.setBuyerListFilter()
                }                   
                 ,1000);
            });
        //.initComplete(function () {
        //    $scope.setBuyerListFilter();
        //});





        $scope.setBuyerListFilter = function () {
            //$('#pBuyer tfoot th').each(function () {
            //    var title = $(this).text();
            //    //console.log($(this).attr('type'));
            //    if ($(this).attr('type') == 'text') {
            //        $(this).html('<input type="text" class="table-filter" placeholder="Search ' + title + '" />');
            //    }
            //    else if ($(this).attr('type') == 'text') {
            //        $(this).html('<input type="text" class="table-filter" placeholder="Search ' + title + '" />');
            //    }
            //});

            var table = $('#entry-grid').DataTable();
            table.columns().every(function () {
                var column = this;
                if ($(this.header()).attr('type') == 'text') {
                    $('<input type="text" class="table-filter" placeholder="Search" />')
                        .appendTo($(column.footer()).empty())
                        .on('keyup change', function () {
                            var val = $.fn.dataTable.util.escapeRegex(
                                $(this).val()
                            );
                            column.search(val).draw();
                        });
                }
                else if ($(this.header()).attr('type') == 'sentiment-select') {
                    var select = $('<select multiple class="select" style="width: 100%;"><option value=""></option></select>')
                        .appendTo($(column.footer()).empty())
                        .on('change', function () {
                            //console.log($(this).val());
                            var val = '';
                            if ($(this).val() != null) {
                                var val = $(this).val().join('|');
                            }
                            //column.search(val.length > 0 ? '^(' + val + ')$' : '', true, false).draw();
                            column.search(val.length > 0 ? '' + val + '' : '', true, false).draw();
                        });
                    $sentimentArray.forEach(function (d, j) {
                        select.append('<option value="' + d + '">' + d + '</option>')
                    });

                }
                else if ($(this.header()).attr('type') == 'source-select') {
                    var select = $('<select multiple class="select" style="width: 100%;"><option value=""></option></select>')
                        .appendTo($(column.footer()).empty())
                        .on('change', function () {
                            var val = '';
                            if ($(this).val() != null) {
                                var val = $(this).val().join('|');
                            }
                            //column.search(val.length > 0 ? '^(' + val + ')$' : '', true, false).draw();
                            column.search(val.length > 0 ? '' + val + '' : '', true, false).draw();
                        });
                    $sourceArray.forEach(function (d, j) {
                        select.append('<option value="' + d + '">' + d + '</option>')
                    });
                }
                else if ($(this.header()).attr('type') == 'select') {
                    var select = $('<select multiple class="select" style="width: 100%;"><option value=""></option></select2>')
                        .appendTo($(column.footer()).empty())
                        .on('change', function () {
                            var val = '';
                            if ($(this).val() != null) {
                                var val = $(this).val().join('|');
                            }
                            //column.search(val.length > 0 ? '^(' + val + ')$' : '', true, false).draw();
                            column.search(val.length > 0 ? '' + val + '' : '', true, false).draw();
                        });
                    column.data().unique().sort().each(function (d, j) {
                        select.append('<option value="' + d + '">' + d + '</option>')
                    });
                }
            });
            $('.select').select2();
        }

    }])