$(function() {

    $('#submit_invoice').on('click', function(){
        var hiddenField = $('#invoice_total_hidden');
    	hiddenField.empty();
        var t = $('#invoice_total').text();
     	var tNum = Number(t.split('$')[1]);
    	hiddenField.val(tNum);
    });
    // on change function does not work yet
    // $('#invoice_total').on('change', function () {
    //     hiddenField.empty();
    //     hiddenField.val(tNum);
    // })
}); // end DOM ready fn
