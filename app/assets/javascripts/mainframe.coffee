$ = jQuery
$(document).ready ->
    stepNumber = 1
    $(document).on 'click', '#newsprev', (event) ->
        $inView = $('.indexnews.current');
        $('.indexnews.current').prev().removeClass('prev').addClass('current');
        $inView.removeClass('current').addClass('next');
        stepNumber=1;
        if stepNumber == 1 
              $(this).addClass('disabled');
              $('#newsnext').removeClass('disabled');
        
        if stepNumber == 2 
            $(this).removeClass('disabled');
            $('#newsnext').addClass('disabled');
        
        
    $(document).on 'click', '#newsnext', (event) ->
        $inView = $('.indexnews.current');
        $('.indexnews.current').next().removeClass('next').addClass('current');
        $inView.removeClass('current').addClass('prev');
        stepNumber=2;
        if stepNumber == 1 
              $(this).addClass('disabled');
              $('#newsprev').removeClass('disabled');
        
        if stepNumber == 2 
            $(this).addClass('disabled');
            $('#newsprev').removeClass('disabled');
        
    
    return