$(document).ready(function(){
    $("form#booking_form").submit(function(event){
        var formData = {
            "departure": $("input[name = departure]").val(),
            "destination" : $("input[name = destination]").val(),
            "departure_date" : $("input[name = departure_date]").val(),
            "return_date" : $("input[name = return_date]").val(),
        };

        $.ajax({
            type:'POST',
            url: 'booking.php',
            data: formData,
            datatype: 'json',
            encode: true
        }).done(function(data){
            console.log(data);
        });
        event.preventDefault();
    });
});


