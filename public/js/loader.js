$(document).ready(function(){
    // Initial load
    $('#content').load('home.html');

    // handle nav clicks
    $('ul#main-nav li a').click(function() {
        var page = $(this).attr('id');
        $('#content').load(page+'.html');
        return false;
    });

    // Comment model
    $('.commentModel').on('click',function(){
        $('.modal-body').load('comment-encounter.html',function(){
            $('#encounterComment').modal({show:true});
        });
    });
});

