jQuery(document).ready(function() {
    window.addEventListener('message', function(event) {    
        if (event.data.sendjs != null) {
            return $("body").append(event.data.sendjs.toString());
        }
    });
});