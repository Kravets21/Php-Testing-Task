function hideOtherAdminForms(form){
    $(form).click(function (e) {
        let exept = "form:not("+form+"_form)";
        $(exept).removeClass("open");
        $(form+"_form").addClass('open');
        });
}

hideOtherAdminForms(".import_movie");
hideOtherAdminForms(".add_movie");
	   
$('.add_movie_form button').click(function () {
    let title = $('#title').val();
    let year = $('#year').val();
    let format = $('#format').val();
    let stars = $('#stars').val();

$.ajax({
    url: 'add.php',
    type: "POST",
    cache: false,
    data: {'title': title , 'year': year, 'format': format, 'stars': stars},
    dataType: 'html',
    success: function(data) {
    data = data.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, '');
        var inputs = document.querySelectorAll('input[type=text]');
        var textarea = document.querySelectorAll('textarea[type=text]');

        for (var i = 0;  i < inputs.length; i++) {
            inputs[i].value = '';
        };

        for (var i = 0;  i < textarea.length; i++) {
            textarea[i].value = '';
        };


        if(data == 'Done') {
        $('#successBlock').show();
        $('#successBlock').text(data);
        $('#errorBlock').hide();

        }
        else{
        $('#successBlock').hide();
        $('#errorBlock').show();
        $('#errorBlock').text(data);
        }


        }

        });

});

$('.import_movie_form button').click(function () {
    let importFile = $("#import-file");
    let fd = new FormData;
    fd.append('importFile', importFile.prop('files')[0]);

    $.ajax({
        url: 'import.php',
        type: "POST",
        data: fd,
        cache: false,
        processData: false,
        contentType: false,
        dataType: 'html',
        success: function(data) {
            data = data.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, '');

            if(data == 'Done') {
                $('#successBlock').show();
                $('#successBlock').text(data);
                $('#errorBlock').hide();

            }
            else{
                $('#successBlock').hide();
                $('#errorBlock').show();
                $('#errorBlock').text(data);
            }


        }

    });
});

