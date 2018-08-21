$(document).ready(() => {

    // Initial load
    $('#content').load('home.html');
    // Handle nav clicks
    $('ul#main-nav li a').click(function() {

        var page = $(this).attr('id');
        $('#content').load(`${page}.html`);

        return false;

    });
    // Comment model
    $('.commentModel').on('click', () => {

        $('.modal-body').load('comment-encounter.html',() => {

            $('#encounterComment').modal({show: true});
        
        });
    
    });

});

