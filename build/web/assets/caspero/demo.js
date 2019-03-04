$(function($) {

    'use strict';

    //------------------------------------------------------------------------------------------------------------------
    // PAGE: Index
    //------------------------------------------------------------------------------------------------------------------

    //------------------------------------------------------------------------------------------------------------------
    // PAGE: Personal
    //------------------------------------------------------------------------------------------------------------------

    //
    // User Activity Line Chart
    //

    var $demo_chart_user_activity = $('#demo-chart-user-activity');
    if ($demo_chart_user_activity.length > 0) {
        new Chart($demo_chart_user_activity, {
            type: 'line',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                datasets: [{
                    label: ' AP',
                    data: [879, 980, 594, 398, 1345, 1101, 1469],
                    backgroundColor: 'rgba(101, 156, 224, .3)',
                    borderColor: 'rgba(101, 156, 224, .4)',
                    borderWidth: 1,
                    pointRadius: 3,
                    pointHitRadius: 5
                }]
            },
            options: {

                legend  : { display: false },
                tooltips: { enabled: false },

                scales: {
                    xAxes: [{ display: false }],
                    yAxes: [{ display: false }]
                }
            }
        });
    }


    //------------------------------------------------------------------------------------------------------------------
    // Buttons
    //------------------------------------------------------------------------------------------------------------------

    var $demo_button = $('#demo-button'),
        $demo_button_text = $('#demo-button-text'),
        $demo_button_icon_left = $('#demo-button-icon-left'),
        $demo_button_icon_right = $('#demo-button-icon-right');

    if ($demo_button.length > 0) {

        // Button Size Radio
        $('input[name="demo-button-size"]').on('change', function() {

            var val = $(this).val();

            $demo_button.removeClass('btn-lg btn-sm btn-xs');

            switch (val) {
                case 'lg':
                case 'sm':
                case 'xs':
                    $demo_button.addClass('btn-' + val);
                    break;
            }
        });

        // Button Color Radio
        $('input[name="demo-button-color"]').on('change', function() {

            var val = $(this).val();

            $demo_button.removeClass('btn-default btn-primary btn-info btn-success btn-warning btn-danger');

            switch (val) {
                case 'default':
                case 'primary':
                case 'info':
                case 'success':
                case 'warning':
                case 'danger':
                    $demo_button.addClass('btn-' + val);
                    break;
            }
        });

        // Button States Radio
        $('input[name="demo-button-state"]').on('change', function() {

            var val = $(this).val();

            $demo_button.removeClass('active hover disabled');

            switch (val) {
                case 'active':
                case 'hover':
                case 'disabled':
                    $demo_button.addClass(val);
                    break;
            }
        });

        // Button States Radio
        $('input[name="demo-button-icon"]').on('change', function() {

            var val = $(this).val();

            switch (val) {
                case 'icon-left-text':

                    $demo_button_icon_left.show();
                    $demo_button_text.show();
                    $demo_button_icon_right.hide();

                    break;

                case 'icon-right-text':

                    $demo_button_icon_left.hide();
                    $demo_button_text.show();
                    $demo_button_icon_right.show();

                    break;

                case 'text-only':

                    $demo_button_icon_left.hide();
                    $demo_button_text.show();
                    $demo_button_icon_right.hide();

                    break;

                case 'icon-only':

                    $demo_button_icon_left.show();
                    $demo_button_text.hide();
                    $demo_button_icon_right.hide();

                    break;
            }
        });

        // Button Additional Checkboxes
        $('.demo-button-additional').on('change', function() {

            var val = $(this).val(),
                checked = $(this).prop('checked');

            switch (val) {

                case 'rounded':
                case 'o':
                case 'block':

                    if (checked) $demo_button.addClass('btn-' + val);
                    else $demo_button.removeClass('btn-' + val);

                    break;
            }

        });

    }

    //------------------------------------------------------------------------------------------------------------------
    // Carousels
    //------------------------------------------------------------------------------------------------------------------

    var $demo_owl_carousel = $('#demo-owl-carousel'),
        $demo_carousel_configurator = $('#demo-carousel-configurator');

    // This function is duplicate initialization from general.js
    function reinitOwlCarousels($carousel, data) {

        var owl_parameters = {
            pagination : false,
            navigation : false, // By default is false (set for reinit)
            autoPlay   : false, // By default is false (set for reinit)
            responsive : true,
            singleItem : true
        };

        if (data['navigation']) {

            owl_parameters.navigation = true;
            owl_parameters.navigationText = [
                '<i class="icon fa fa-angle-left"></i>',
                '<i class="icon fa fa-angle-right"></i>'
            ];
        }

        if (data['pagination']) {

            owl_parameters.pagination = true;
            owl_parameters.navigationText = [
                '<i class="icon fa fa-angle-left"></i>',
                '<i class="icon fa fa-angle-right"></i>'
            ];
        }

        if (data['autoPlay']) {
            owl_parameters.autoPlay = 3500;
        }

        $carousel.data('owlCarousel').destroy();
        $carousel.owlCarousel(owl_parameters);
    }

    if ($demo_owl_carousel.length > 0 && $demo_carousel_configurator.length > 0) {

        // Carousel Additional Checkboxes
        $('.demo-carousel-additional').on('change', function() {

            var val = $(this).val(),
                checked = $(this).prop('checked');

            switch (val) {

                case 'item-description':

                    if (checked) $demo_owl_carousel.find('.item-description').show();
                    else $demo_owl_carousel.find('.item-description').hide();

                    return;

            }

        });

        $demo_carousel_configurator.on('submit', function(e) {

            e.preventDefault();
            e.stopPropagation();

            var data = [];

            var $demo_owl_carousel_pagination = $('#demo-owl-carousel-pagination'),
                $demo_owl_carousel_navigation = $('#demo-owl-carousel-navigation'),
                $demo_owl_carousel_autoplay = $('#demo-owl-carousel-autoplay');

            if ($demo_owl_carousel_pagination.length > 0) {
                data['pagination'] = $demo_owl_carousel_pagination.prop('checked');
            }

            if ($demo_owl_carousel_navigation.length > 0) {
                data['navigation'] = $demo_owl_carousel_navigation.prop('checked');
            }

            if ($demo_owl_carousel_autoplay.length > 0) {
                data['autoPlay'] = $demo_owl_carousel_autoplay.prop('checked');
            }

            reinitOwlCarousels($demo_owl_carousel, data);
        });

    }

    //------------------------------------------------------------------------------------------------------------------
    // PAGE: Components
    //------------------------------------------------------------------------------------------------------------------

    //
    // Sweet Alerts
    //

    $('.btn-demo-sweet-alert').each(function() {

        var $btn = $(this),
            id = $btn.attr('id');

        if (id == 'undefined') return;

        switch(id) {

            case 'demo-sweet-alert-basic':

                $btn.on('click', function() {
                    swal("Here's a message!");
                });

                break;

            case 'demo-sweet-alert-basic-title':

                $btn.on('click', function() {
                    swal("Here's a message!", "It's pretty, isn't it?");
                });

                break;

            case 'demo-sweet-alert-success':

                $btn.on('click', function() {
                    swal("Good job!", "You clicked the button!", "success");
                });

                break;

            case 'demo-sweet-alert-confirm':

                $btn.on('click', function() {
                    swal({
                        title: 'Are you sure?',
                        text: 'You will not be able to recover this imaginary file!',
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#DD6B55',
                        confirmButtonText: 'Yes, delete it!',
                        cancelButtonText: 'No, cancel plx!',
                        closeOnConfirm: false,
                        closeOnCancel: false

                    }, function(isConfirm){
                        if (isConfirm) swal('Deleted!', 'Your imaginary file has been deleted.', 'success');
                        else swal('Cancelled', 'Your imaginary file is safe :)', 'error');
                    });
                });

                break;


            case 'demo-sweet-alert-custom-icon':

                $btn.on('click', function() {

                    swal({
                        title: 'Sweet!',
                        text: 'Here\'s a custom image.',
                        imageUrl: 'images/sweet-alert-thumbs-up.jpg'
                    });
                });

                break;

            case 'demo-sweet-alert-html':

                $btn.on('click', function() {

                    swal({
                        title: 'HTML <small>Title</small>!',
                        text: 'A custom <span style="color:#F8BB86">html<span> message.',
                        html: true
                    });

                });

                break;

            case 'demo-sweet-alert-auto-close':

                $btn.on('click', function() {

                    swal({
                        title: "Auto close alert!",
                        text: "I will close in 2 seconds.",
                        timer: 2000,
                        showConfirmButton: false
                    });
                });

                break;

            case 'demo-sweet-alert-prompt':

                $btn.on('click', function() {

                    swal({

                        title: 'An input!',
                        text: 'Write something interesting:',
                        type: 'input',
                        showCancelButton: true,
                        closeOnConfirm: false,
                        animation: 'slide-from-top',
                        inputPlaceholder: 'Write something'

                    }, function(inputValue){

                        if (inputValue === false) return false;

                        if (inputValue === '') {
                            swal.showInputError('You need to write something!');
                            return false
                        }

                        swal('Nice!', 'You wrote: ' + inputValue, 'success');
                    });
                });

                break;

            case 'demo-sweet-alert-loader':

                $btn.on('click', function() {
                    swal({

                        title: 'Ajax request example',
                        text: 'Submit to run ajax request',
                        type: 'info',
                        showCancelButton: true,
                        closeOnConfirm: false,
                        showLoaderOnConfirm: true

                    },  function(){
                        setTimeout(function(){
                            swal('Ajax request finished!');
                        }, 2000);
                    });
                });

                break;


        }



    });

    //------------------------------------------------------------------------------------------------------------------
    // PAGE: jsTree
    //------------------------------------------------------------------------------------------------------------------

    //
    // Basic Tree
    //

    var $demo_jstree = $('#demo-jstree');
    if ($demo_jstree.length > 0) {
        $demo_jstree.jstree();
    }

    //
    // Checkable Tree
    //

    var $demo_jstree_checkable = $('#demo-jstree-checkable');
    if ($demo_jstree_checkable.length > 0) {

        $demo_jstree_checkable.jstree({
            checkbox: {
                keep_selected_style: false
            },
            plugins: [ 'wholerow', 'checkbox' ]
        });

    }

    //
    // Drag & Drop Tree
    //

    var $demo_jstree_drag_and_drop = $('#demo-jstree-drag-and-drop');
    if ($demo_jstree_drag_and_drop.length > 0) {

        $demo_jstree_drag_and_drop.jstree({
            core: {
                check_callback: true
            },
            plugins: [ 'dnd' ]
        });

    }

    //
    // Search Tree
    //

    var $demo_jstree_search = $('#demo-jstree-search');
    if ($demo_jstree_search.length > 0) {

        $demo_jstree_search.jstree({
            plugins: [ 'search' ]
        });

        var $search_input = $('#demo-jstree-search-input'),
            to = null;

        $search_input.keyup(function () {

            if (to) clearTimeout(to);

            to = setTimeout(function () {
                var v = $search_input.val();
                $demo_jstree_search.jstree(true).search(v);
            }, 250);

        });

    }

    //------------------------------------------------------------------------------------------------------------------
    // Calendar
    //------------------------------------------------------------------------------------------------------------------

    $('#demo-fullcalendar-external-events').find('.fc-event').each(function() {

        // store data so the calendar knows to render an event upon drop
        $(this).data('event', {
            title: $.trim($(this).text()), // use the element's text as the event title
            stick: true // maintain when user navigates (see docs on the renderEvent method)
        });

        // make the event draggable using jQuery UI
        $(this).draggable({
            zIndex: 999,
            revert: true,      // will cause the event to go back to its
            revertDuration: 0  //  original position after the drag
        });

    });

    $('#calendar').fullCalendar({
        header: {
            left  : 'prev, next today',
            center: 'title',
            right : 'month, agendaWeek, agendaDay'
        },
        editable: true,
        droppable: true, // this allows things to be dropped onto the calendar
        drop: function() {
            if ($('#demo-fullcalendar-drop-remove').is(':checked')) $(this).remove();
        }
    });

    //------------------------------------------------------------------------------------------------------------------
    // Charts
    //------------------------------------------------------------------------------------------------------------------
    //
    // blue        primary  rgba(101, 156, 224, 1.0)
    // green       success  rgba( 28, 188, 139, 1.0)
    // light-blue  info     rgba( 55, 198, 211, 1.0)
    // orange      warning  rgba(241, 196,  15, 1.0)
    // red         danger   rgba(237, 107, 118, 1.0)
    // purple               rgba(154,  89, 182, 1.0)
    // dark                 rgba( 52,  73,  94, 1.0)
    //
    //------------------------------------------------------------------------------------------------------------------

    //
    // Line Chart
    //

    var $demo_chart_line = $('#demo-chart-line');
    if ($demo_chart_line.length > 0) {
        new Chart($demo_chart_line, {
            type: 'line',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                datasets: [{
                    label: ' Current Week Visits',
                    data: [879, 980, 594, 398, 1345, 1101, 1469],
                    backgroundColor: 'rgba(101, 156, 224, .3)',
                    borderColor: 'rgba(101, 156, 224, .4)',
                    borderWidth: 1,
                    pointRadius: 3,
                    pointHitRadius: 5
                }, {
                    label: ' Last Week Visits',
                    data: [787, 591, 398, 402, 786, 978, 1150],
                    backgroundColor: 'rgba(237, 107, 118, .3)',
                    borderColor: 'rgba(237, 107, 118, .4)',
                    borderWidth: 1,
                    pointRadius: 3,
                    pointHitRadius: 5
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero:true
                        }
                    }]
                }
            }
        });
    }

    //
    // Bar Chart
    //

    var $demo_chart_bar = $('#demo-chart-bar');
    if ($demo_chart_bar.length > 0) {
        new Chart($demo_chart_bar, {
            type: 'bar',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                datasets: [{
                    label: ' Current Week Visits',
                    data: [879, 980, 594, 398, 1345, 1101, 1469],
                    backgroundColor: [
                        'rgba(101, 156, 224, .3)',
                        'rgba( 28, 188, 139, .3)',
                        'rgba( 55, 198, 211, .3)',
                        'rgba(241, 196,  15, .3)',
                        'rgba(237, 107, 118, .3)',
                        'rgba(154,  89, 182, .3)',
                        'rgba( 52,  73,  94, .3)'
                    ],
                    borderColor: [
                        'rgba(101, 156, 224, .6)',
                        'rgba( 28, 188, 139, .6)',
                        'rgba( 55, 198, 211, .6)',
                        'rgba(241, 196,  15, .6)',
                        'rgba(237, 107, 118, .6)',
                        'rgba(154,  89, 182, .6)',
                        'rgba( 52,  73,  94, .6)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero:true
                        }
                    }]
                }
            }
        });
    }

    //
    // Radar Chart
    //

    var $demo_chart_radar = $('#demo-chart-radar');
    if ($demo_chart_radar.length > 0) {
        new Chart($demo_chart_radar, {
            type: 'radar',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                datasets: [
                    {

                        label: ' Current Week Visits',
                        backgroundColor: 'rgba(101, 156, 224, .3)',

                        borderWidth: 1,
                        borderColor: 'rgba(101, 156, 224, .4)',

                        pointBackgroundColor: 'rgba(101, 156, 224, .6)',
                        pointBorderColor: '#fff',
                        pointHoverBackgroundColor: '#fff',
                        pointHoverBorderColor: 'rgba(101, 156, 224, .6)',

                        data: [879, 891, 1054, 398, 1345, 1101, 1469]
                    },
                    {

                        label: ' Last Week Visits',
                        backgroundColor: 'rgba(237, 107, 118, .3)',

                        borderWidth: 1,
                        borderColor: 'rgba(237, 107, 118, .4)',

                        pointBackgroundColor: "rgba(237, 107, 118, .6)",
                        pointBorderColor: '#fff',
                        pointHoverBackgroundColor: '#fff',
                        pointHoverBorderColor: "rgba(237, 107, 118, .6)",

                        data: [1500, 891, 398, 1000, 786, 978, 1150]
                    }
                ]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero:true
                        }
                    }]
                }
            }
        });
    }

    //
    // Polar Area Chart
    //

    var $demo_chart_polar_area = $('#demo-chart-polar-area');
    if ($demo_chart_polar_area.length > 0) {
        new Chart($demo_chart_polar_area, {
            type: 'polarArea',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
                datasets: [{
                    label: ' Current Week Visits',
                    data: [879, 980, 594, 398, 1345, 1101],
                    backgroundColor: [
                        'rgba(101, 156, 224, .6)',
                        'rgba( 28, 188, 139, .6)',
                        'rgba( 55, 198, 211, .6)',
                        'rgba(241, 196,  15, .6)',
                        'rgba(237, 107, 118, .6)',
                        'rgba(154,  89, 182, .6)'
                    ],
                    borderColor: '#fff',
                    hoverBorderColor: '#fff',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero:true
                        }
                    }]
                }
            }
        });
    }

    //
    // Pie Chart
    //

    var $demo_chart_pie = $('#demo-chart-pie');
    if ($demo_chart_pie.length > 0) {
        new Chart($demo_chart_pie, {
            type: 'pie',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
                datasets: [{
                    label: ' Current Week Visits',
                    data: [879, 980, 594, 398, 1345, 1101],
                    backgroundColor: [
                        'rgba(101, 156, 224, .6)',
                        'rgba( 28, 188, 139, .6)',
                        'rgba( 55, 198, 211, .6)',
                        'rgba(241, 196,  15, .6)',
                        'rgba(237, 107, 118, .6)',
                        'rgba(154,  89, 182, .6)'
                    ],
                    borderColor: '#fff',
                    hoverBorderColor: '#fff',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero:true
                        }
                    }]
                }
            }
        });
    }

    //
    // Doughnut Chart
    //

    var $demo_chart_doughnut = $('#demo-chart-doughnut');
    if ($demo_chart_doughnut.length > 0) {
        new Chart($demo_chart_doughnut, {
            type: 'doughnut',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
                datasets: [{
                    label: ' Current Week Visits',
                    data: [879, 980, 594, 398, 1345, 1101],
                    backgroundColor: [
                        'rgba(101, 156, 224, .6)',
                        'rgba( 28, 188, 139, .6)',
                        'rgba( 55, 198, 211, .6)',
                        'rgba(241, 196,  15, .6)',
                        'rgba(237, 107, 118, .6)',
                        'rgba(154,  89, 182, .6)'
                    ],
                    borderColor: '#fff',
                    hoverBorderColor: '#fff',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero:true
                        }
                    }]
                }
            }
        });
    }

    //------------------------------------------------------------------------------------------------------------------
    // Blog
    //------------------------------------------------------------------------------------------------------------------

    //
    // Button: Load more comments
    //

    $('.demo-button-load-more-comments').on('click', function () {

        var $btn = $(this).button('loading');

        setTimeout(function() {
            $btn.button('reset')
        }, 1500);

    })

});