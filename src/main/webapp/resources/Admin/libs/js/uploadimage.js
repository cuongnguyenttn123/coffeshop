$(function(){
    var files = [];
    $("#image").change(function(event) {
        files = event.target.files;
        var forms = new FormData();
        forms.append("file", files[0]);
        $.ajax({
            url: "/api/upload",
            type:"POST",
            data:forms,
            contentType:false,
            processData: false,
            enctype: "multipart/form-data",
            success: function (value) {
               $("#avt").val(value);
            }
        })
    })
});