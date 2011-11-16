//
// Declarations
//


$(function() {
    $("input").autocomplete({source: [
        {label: "SIGNAL_A (Oil Production)", value: "SIGNAL_A"}, 
        {label: "SIGNAL_B (Gas Production)", value: "SIGNAL_B"}, 
        {label: "SIGNAL_C (Water Injection)", value: "SIGNAL_C"}
    ]});
});
