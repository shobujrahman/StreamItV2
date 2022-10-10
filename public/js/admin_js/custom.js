$(document).ready(function () {
    $("#type").change(function () {
        var type = $("#type").val();

        if (type == 'tvChannel') {
            $("#video").hide(1000);
            $("#channel").show(1000);
        }

        if (type == 'video') {
            $("#video").show(1000);
            $("#channel").hide(1000);
        }


    });

    $(window).on('load', function () {
        var type = $("#type").val();

        if (type == 'tvChannel') {
            $("#video").hide(1000);
            $("#channel").show(1000);
        }

        if (type == 'video') {
            $("#video").show(1000);
            $("#channel").hide(1000);
        }

    });

});


$(document).ready(function () {
    $('#watch_ads').change(function () {
        var types = $('#watch_ads').val();

        if (types == 'paid' || types == 'rent') {
            // $("#video").hide(1000);
            $('#content').show(1000);
        }


        else {
            // $("#video").hide(1000);
            $('#content').hide(1000);
        }

    });

    $(window).on('load', function () {
        var types = $('#watch_ads').val();

        if (types == 'paid' || types == 'rent') {
            // $("#video").hide(1000);
            $('#content').show(1000);
        }

        else {
            // $("#video").hide(1000);
            $('#content').hide(1000);
        }

    });

});




$(document).ready(function () {
    $("#url_type").change(function () {
        var type = $("#url_type").val();

        if (type == '9') {
            $("#url").show(1000);
            $("#urlQuality").show(1000);
            // $("#upload_video").show(1000);
        }
        else {
            $("#url").show(1000);
            $("#urlQuality").show(1000);
            // $("#upload_video").hide(1000);
        }
    });

    $(window).on('load', function () {
        var type = $("#url_type").val();

        if (type == '9') {
            $("#url").show(1000);
            $("#urlQuality").show(1000);
            // $("#upload_video").show(1000);
        }
        else {
            $("#url").show(1000);
            $("#urlQuality").show(1000);
            // $("#upload_video").hide(1000);
        }
    });

});



$(document).ready(function () {
    $("#imgType").change(function () {
        var type = $("#imgType").val();

        if (type == 'file') {
            $("#post").show(1000);
            $("#thum").show(1000);
            $("#postdiv").hide(1000);
            $("#thumdiv").hide(1000);
            $("#poster").hide(1000);
            $("#thumb").hide(1000);
        }
        else {
            $("#post").hide(1000);
            $("#thum").hide(1000);
            $("#postdiv").show(1000);
            $("#thumdiv").show(1000);
            $("#poster").show(1000);
            $("#thumb").show(1000);
        }
    });

    $(window).on('load', function () {
        var type = $("#imgType").val();
        
        if (type == "link") {
            $("#post").hide(1000);
            $("#thum").hide(1000);
            $("#postdiv").show(1000);
            $("#thumdiv").show(1000);
            $("#poster").show(1000);
            $("#thumb").show(1000);
            document.getElementById("poster").src = $("#posterUrl").val();
            document.getElementById("thumb").src = $("#thumbUrl").val();
        }
        if(type == "file"){
            $("#post").show(1000);
            $("#thum").show(1000);
            $("#postdiv").hide(1000);
            $("#thumdiv").hide(1000);
            $("#poster").hide(1000);
            $("#thumb").hide(1000);
        }
    });

    $("#button").click(function () {
        $("#post").hide();
        $("#thum").hide();
        $("#postdiv").show();
        $("#thumdiv").show();
        $("#poster").show();
        $("#thumb").show();
    });

});


//create dynamic field
$(document).ready(function(){
    var max_fields = 10;
    var wrapper = $(".add_input_fields"); //Fields wrapper
    var add_button = $(".add_input_fields_button"); //Add button ID
    var x = 1; //initlal text box count
    $(add_button).click(function(e){
        e.preventDefault();
        if(x < max_fields){
            x++;
            $(wrapper).append(
                
                // "<div class='row add_input_fields col-12'><div class='form-group col-md-6'><input type='text' name='quality[]' class='form-control' placeholder='Quality' style='width:449px;'></div><div class='form-group col-md-5' style='margin-left:15px;'><input type='text' style='width:411px;' name='urls[]' class='form-control' placeholder='Url'></div><a href='#' class='remove_field'> <i class='fas fa-times'></i></a></div>"
                "<div class='row add_input_fields col-12' id='urlQuality'><div class='form-group col-md-6'><input type='text' name='quality[]' class='form-control' placeholder='Quality' style='width:465px;'></div><div class='form-group col-md-5' style='margin-left:15px;'><input type='text' style='width:395px;' name='urls[]' class='form-control' placeholder='Url'></div><a href='#' class='remove_field'> <i class='fas fa-times'></i></a></div>"
                
                );
            }
        });
        // <input type="text" class="form-control" name="quality[]" placeholder="enter quality 4k,3k,hd"> 
        // <input type="text" class="form-control" name="urls[]" placeholder="enter quality 4k,3k,hd"> 
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); 
        $(this).parent('div').remove();
        x--;
    });
});