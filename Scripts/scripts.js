/*
Date picker behavior
*/
//date format for inputs
/*
scheduler.pickerDateFormat = "%m/%d/%Y"; 

function remove_minical() {
    if (scheduler._calendar) {
        scheduler.destroyCalendar(scheduler._calendar);
        $("#minical_cont").remove();
        scheduler._calendar = null;

    }
}
function show_minical(id, start_date) {
    //if mini calendar already shown - destroy it
    if (scheduler._calendar) {
        remove_minical();

    }
    //create container for the mini calendar
    var position = $("#" + id).position();
    var div = $("<div></div>")
                        .attr('id', 'minical_cont').attr('class', 'minical_container')
                        .css('left', position.left).css('top', position.top);

    $('body').append(div);

    if (start_date) {
        var converter = scheduler.date.str_to_date(scheduler.pickerDateFormat);
        start_date = converter(start_date);
    }
    //create minicalendar
    scheduler._calendar = scheduler.renderCalendar({
        container: "minical_cont",
        date: start_date || scheduler._date,
        navigation: true,
        handler: function (date, calendar) {
            //on click - put selected value to the input
            $("#" + id).val(scheduler.date.date_to_str(scheduler.pickerDateFormat)(date));
            //and remove calendar
            remove_minical();
            //check if 'To' date is later than 'From' date
            if (!areDatesCorrect()) {
                showWarning();
            }
        }
    });
    */
    /*
    function areDatesCorrect() {
        var from = $("#DateFrom").val(),
            to = $("#DateTo").val();

        if (from && to) {
            //function to conver string to date object
            var converter = scheduler.date.str_to_date(scheduler.pickerDateFormat);
            from = converter(from);
            to = converter(to);
            if (from && to) {//if converted successfully
                if (from.getTime() > to.getTime())
                //return false only if start date is later than end date, other cases are valid
                    return false;
            }

        }
        return true;
    }
    function showWarning() {
        $("#DateTo").val("");
        dhtmlx.message("Pick up date must be before Drop off date!");
    }
}
*/
//set displayed text     
var durations = {
    day: 24 * 60 * 60 * 1000,
    hour: 60 * 60 * 1000
};

var get_formatted_duration = function (start, end) {
    var diff = end - start;

    var days = Math.floor(diff / durations.day);
    diff -= days * durations.day;
    var hours = Math.floor(diff / durations.hour);
    diff -= hours * durations.hour;

    var results = [];
    if (days) results.push(days + " days");
    if (hours) results.push(hours + " hours");
    return results.join(", ");
};

scheduler.templates.event_bar_text = function (start, end, event) {
    var text = "Rented";
    return text + " for " + get_formatted_duration(start, end);
};