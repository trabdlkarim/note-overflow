//----------------------------------------------------------------------------------------------------------------------
// DEFINITION: Constants
//----------------------------------------------------------------------------------------------------------------------

var THEME_COLORS = {
    DEFAULT: '#a8bdcf',
    PRIMARY: '#659ce0',
    SUCCESS: '#1cb787',
    INFO   : '#34b4c1',
    WARNING: '#f0ad4e',
    DANGER : '#ed6b76'
};

function hex2RGBA(hex, opacity){

    hex = hex.replace('#', '');

    r = parseInt(hex.substring(0,2), 16);
    g = parseInt(hex.substring(2,4), 16);
    b = parseInt(hex.substring(4,6), 16);

    return 'rgba(' + r + ', ' + g + ', ' + b + ', ' + opacity / 100 + ')';
}

$(function($) {

    'use strict';

    //------------------------------------------------------------------------------------------------------------------
    // Variables
    //------------------------------------------------------------------------------------------------------------------

    var $body_html = $('body, html'),
        $html = $('html'),
        $body = $('body'),

        $navigation = $('.affix'),
        navigation_height = $navigation.height() - 20,

        $preloader = $('#preloader'),
        $loader = $preloader.find('.loader');

    if (navigation_height <= 0) navigation_height = 60;

    //------------------------------------------------------------------------------------------------------------------
    // Is mobile
    //------------------------------------------------------------------------------------------------------------------

    var ua_test = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i,
        is_mobile = ua_test.test(navigator.userAgent);

    $html.addClass(is_mobile ? 'mobile' : 'no-mobile');

    if (is_mobile) $body.removeClass('expanded');

    //------------------------------------------------------------------------------------------------------------------
    // Buttons Custom Components
    //------------------------------------------------------------------------------------------------------------------

    $('.btn .custom-component').on('click', function(e) {
        e.stopPropagation();
    });

    //------------------------------------------------------------------------------------------------------------------
    // Affixed Navbar
    //------------------------------------------------------------------------------------------------------------------

    $navigation.affix({
        offset: {
            top: navigation_height
        }
    });

    //------------------------------------------------------------------------------------------------------------------
    // Collapsing sidebar
    //------------------------------------------------------------------------------------------------------------------

    $('.sidebar-collapse').click(function(e) {

        e.preventDefault();
        e.stopPropagation();

        $body.toggleClass('expanded');
    });

    //------------------------------------------------------------------------------------------------------------------
    // Sidebar SubMenus
    //------------------------------------------------------------------------------------------------------------------

    $('.sub-toggle')

        .on('click', function(e) {

            e.preventDefault();
            e.stopPropagation();

            var $parent = $(this).parent();

            $(this).toggleClass('sub-open');
            $parent.toggleClass('open');
        });

    $('.sub')

        .on('mouseover', function(e) {

            e.stopPropagation();

            if ($body.hasClass('expanded')) return;

            $('.sub .open').removeClass('open');
            $('.sub .sub-toggle').removeClass('sub-open');

            $(this).find('.sub-toggle').addClass('sub-open');
            $(this).addClass('open');

            var $sub_menu = $(this).find('.sub-menu'),
                $this = $(this);

            if ($sub_menu.length == 0) return;

            var SM_TITLE_HEIGHT = 41, // Sub menu title height
                OFFSET_TOP = 20,      // Top field
                OFFSET_BOTTOM = 20;   // Bottom field

            var w_scroll_top = $(window).scrollTop(),
                w_height = $(window).height(),

                sm_offset = $this.offset().top - w_scroll_top,
                sm_height = $sub_menu.height(),

                delta = w_height - sm_offset - sm_height;

            if (delta < 0) {
                $sub_menu.css({
                    top: 'auto',
                    bottom: OFFSET_BOTTOM
                });
            } else {
                $sub_menu.css({
                    top: sm_offset + SM_TITLE_HEIGHT,
                    bottom: 'auto'
                });
            }

        })

        .on('mouseout', function() {

            if ($body.hasClass('expanded')) return;

            $(this).find('.sub-toggle').removeClass('sub-open');
            $(this).removeClass('open');
        });

    //------------------------------------------------------------------------------------------------------------------
    // Dropdown :hover
    //------------------------------------------------------------------------------------------------------------------

    $.fn.dropdownMouse = function () {

        $.fn.dropdownMouse.shown = {};

        return $('li.dropdown', this).each(function () {

            $(this).on('mouseover', function () {
                $(this).addClass('open');
                $.fn.dropdownMouse.shown[this] = 1;
            });

            $(this).on('mouseout', function () {
                $.fn.dropdownMouse.shown[this] = 0;
                if (0 == $.fn.dropdownMouse.shown[this]) $(this).removeClass('open');
            });

        });
    };

    $navigation.dropdownMouse();

    //------------------------------------------------------------------------------------------------------------------
    // Tooltips
    //------------------------------------------------------------------------------------------------------------------

    $('[data-toggle="tooltip"]').tooltip();

    //------------------------------------------------------------------------------------------------------------------
    // Popovers
    //------------------------------------------------------------------------------------------------------------------

    $('[data-toggle="popover"]').popover();

    //------------------------------------------------------------------------------------------------------------------
    // Circle Progress
    //------------------------------------------------------------------------------------------------------------------

    $('.progress-circle').each(function() {

        var params = {};

        var $progress = $(this),
            progress_value = $progress.data('progress-circle-value');

        // Value - REQUIRED
        if (progress_value == 'undefined') return;

        params.value = progress_value;

        // Contextual color classes
        if ($progress.hasClass('progress-circle-default')) params.fill = { color: hex2RGBA(THEME_COLORS.DEFAULT, 50) };
        if ($progress.hasClass('progress-circle-primary')) params.fill = { color: hex2RGBA(THEME_COLORS.PRIMARY, 50) };
        if ($progress.hasClass('progress-circle-info'))    params.fill = { color: hex2RGBA(THEME_COLORS.INFO   , 50) };
        if ($progress.hasClass('progress-circle-success')) params.fill = { color: hex2RGBA(THEME_COLORS.SUCCESS, 50) };
        if ($progress.hasClass('progress-circle-warning')) params.fill = { color: hex2RGBA(THEME_COLORS.WARNING, 50) };
        if ($progress.hasClass('progress-circle-danger'))  params.fill = { color: hex2RGBA(THEME_COLORS.DANGER , 50) };

        var progress_target = $progress.data('progress-circle-target');
        if (progress_target == 'undefined') return;

        var $target = $(progress_target);
        if ($target.length == 0) return;

        $progress.circleProgress(params).on('circle-animation-progress', function(event, progress, stepValue) {
            $target.html(String(parseInt(stepValue.toFixed(2).substr(1) * 100)) + '%');
        });

    });

    //------------------------------------------------------------------------------------------------------------------
    // Carousels
    //------------------------------------------------------------------------------------------------------------------

    $('.owl-carousel').each(function() {

        var owl_parameters = {
            pagination : false,
            navigation : false, // By default is false (set for reinit)
            autoPlay   : false, // By default is false (set for reinit)
            responsive : true,
            singleItem : true
        };

        var $this = $(this);

        if ($this.hasClass('owl-carousel-navigation')) {

            owl_parameters.navigation = true;
            owl_parameters.navigationText = [
                '<i class="icon fa fa-angle-left"></i>',
                '<i class="icon fa fa-angle-right"></i>'
            ];
        }

        if ($this.hasClass('owl-carousel-pagination')) {

            owl_parameters.pagination = true;
            owl_parameters.navigationText = [
                '<i class="icon fa fa-angle-left"></i>',
                '<i class="icon fa fa-angle-right"></i>'
            ];
        }

        if ($this.hasClass('owl-carousel-autoplay')) {
            owl_parameters.autoPlay = 3500;
        }

        $(this).owlCarousel(owl_parameters);
    });

    //------------------------------------------------------------------------------------------------------------------
    // Magnific
    //------------------------------------------------------------------------------------------------------------------

    $('.popup-image').magnificPopup({
        closeBtnInside: true,
        type          : 'image',
        mainClass     : 'mfp-fade'
    });

    $('.popup-iframe').magnificPopup({
        type      : 'iframe',
        mainClass : 'mfp-fade'
    });

    $('.popup-modal').magnificPopup({
        type      : 'inline',
        modal     : true,
        mainClass : 'mfp-fade'
    });

    $(document).on('click', '.popup-modal-dismiss', function (e) {
        e.preventDefault();
        $.magnificPopup.close();
    });

    //------------------------------------------------------------------------------------------------------------------
    // PNotify
    //------------------------------------------------------------------------------------------------------------------

    var pnotify_stack = {
        dir1: 'up',
        dir2: 'left',
        firstpos1: 25,
        firstpos2: 25
    };

    $('.pnotify').click(function(e) {

        e.preventDefault();
        e.stopPropagation();

        var $this = $(this),
            pnotify_title = $this.data('pnotify-title'),
            pnotify_text = $this.data('pnotify-text'),
            pnotify_type = $this.data('pnotify-type'),
            data = {
                cornerclass: 'ui-pnotify-sharp',
                stack: pnotify_stack,
                buttons: {
                    sticker: false
                }
            },
            classes = ['stack-bottomright', 'pnotify-custom'];

        if (pnotify_title != 'undefined') data.title = pnotify_title;
        if (pnotify_text != 'undefined') data.text = pnotify_text;

        switch (pnotify_type) {

            case 'default':
                data.icon = 'fa fa-info';
                classes.push('pnotify-default');
                break;

            case 'primary':
                data.icon = 'fa fa-info';
                classes.push('pnotify-primary');
                break;

            case 'info':
                data.type = 'info';
                data.icon = 'fa fa-info';
                classes.push('pnotify-info');
                break;

            case 'success':
                data.type = 'success';
                data.icon = 'fa fa-check';
                classes.push('pnotify-success');
                break;

            case 'warning':
                data.icon = 'fa fa-exclamation';
                classes.push('pnotify-warning');
                break;

            case 'danger':
                data.type = 'error';
                data.icon = 'fa fa-exclamation-triangle';
                classes.push('pnotify-error');
                break;
        }

        data.addclass = classes.join(' ');

        new PNotify(data);

    });

    // PNotify.prototype.options.delay += 5500;

    //------------------------------------------------------------------------------------------------------------------
    // Drag & Drop File Upload
    //------------------------------------------------------------------------------------------------------------------

    var dropped_files = false;

    $('.drag-and-drop-form').each(function() {

        var $_form = $(this),
            $input = $_form.find('input[type="file"]'),
            $label = $_form.find('label'),
            $clear = $_form.find('.dd-clear-state'),

            default_label = 'or <span class="link">choose a file</span></label>',

            showFiles = function(files) {

                var files_length = files.length,
                    label_text = '';

                if (files_length == 0) {
                    label_text = default_label;
                } else if (files_length == 1) {
                    label_text = files[0].name;
                }  else {
                    label_text = ($input.data('multiple-caption') || '').replace( '{count}', files.length);
                }

                $label.html(label_text);
            };

        // Update files data
        $input.on('change', function(e) {
            showFiles(e.target.files);
        });

        $clear.on('click', function() {
            $_form.trigger('reset');
            dropped_files = [];
            showFiles(dropped_files);
            $_form.removeClass('dd-is-uploading dd-is-error dd-is-success');
        });

        $_form

            .on('drag dragstart dragend dragover dragenter dragleave drop', function(e) {
                e.preventDefault();
                e.stopPropagation();
            })

            .on('dragover dragenter', function() {
                $(this).addClass('dd-is-dragover');
            })

            .on('dragleave dragend drop', function() {
                $(this).removeClass('dd-is-dragover');
            })

            .on('drop', function(e) {
                dropped_files = e.originalEvent.dataTransfer.files;
                showFiles(dropped_files);
            })

            .on('submit', function(e) {

                e.preventDefault();

                var $form = $(this);

                // Return if uploading process is active
                if ($form.hasClass('dd-is-uploading')) return false;

                // Update state classes (clear form state)
                $form.addClass('dd-is-uploading').removeClass('dd-is-error dd-is-success');

                var ajax_data = new FormData($form.get(0));

                if (dropped_files) {
                    $.each(dropped_files, function(i, file) {
                        ajax_data.append($input.attr('name'), file);
                    });
                }

                $.ajax({

                    url: $form.attr('action'),
                    type: $form.attr('method'),

                    data: ajax_data,
                    dataType: 'json',

                    cache: false,
                    contentType: false,
                    processData: false,

                    complete: function() {
                        $form.removeClass('dd-is-uploading');
                    },

                    success: function(data) {
                        $form.addClass(data.success == true ? 'dd-is-success' : 'dd-is-error');
                    },

                    error: function() {
                        //
                        // Log the error, show an alert, whatever works for you
                        //
                    }
                });
            });

    });

    //------------------------------------------------------------------------------------------------------------------
    // Custom Scroll
    //------------------------------------------------------------------------------------------------------------------

    $('.custom-scroll').mCustomScrollbar({
        scrollInertia: 150,
        height       : '100%',
        theme        : 'dark',
        axis         : 'y'
    });

    //------------------------------------------------------------------------------------------------------------------
    // Sidebars
    //------------------------------------------------------------------------------------------------------------------

    $('.sidebar-toggle').on('click', function(e) {

        e.preventDefault();
        e.stopPropagation();

        var sidebar_selector = $(this).data('sidebar');
        if (sidebar_selector == 'undefined') return;

        var $element = $(sidebar_selector),
            $parent_control = $(this).closest('li');

        $element.toggleClass('in');

        if ($element.hasClass('in')) {
            $parent_control.addClass('open');
            $body.addClass('sidebar-open');
        } else {
            $parent_control.removeClass('open');
            $body.removeClass('sidebar-open');
        }
    });

    $('.sidebar-close').on('click', function(e) {

        e.preventDefault();
        e.stopPropagation();

        var sidebar_selector = $(this).data('sidebar');
        if (sidebar_selector == 'undefined') return;

        var $element = $(sidebar_selector),
            $parent_control = $('[data-sidebar="' + sidebar_selector + '"]').closest('li');

        $element.removeClass('in');
        $parent_control.removeClass('open');
        $body.removeClass('sidebar-open');
    });

    //------------------------------------------------------------------------------------------------------------------
    // Navbar Search
    //------------------------------------------------------------------------------------------------------------------

    $('.navbar-search-toggle').on('click', function(e) {

        e.preventDefault();
        e.stopPropagation();

        $('.navbar-search-form').toggleClass('open');
    });

    //------------------------------------------------------------------------------------------------------------------
    // Stellar Parallax
    //------------------------------------------------------------------------------------------------------------------

    $.stellar({
        responsive: true,
        horizontalOffset: 0,
        verticalOffset: 0,
        horizontalScrolling: false,
        hideDistantElements: false
    });

    //------------------------------------------------------------------------------------------------------------------
    // Charts
    //------------------------------------------------------------------------------------------------------------------

    //
    // Sales Today: Line Chart
    //

    var $ctx_site_visits_line = $('#site-visits-line');
    if ($ctx_site_visits_line.length > 0) {
        new Chart($ctx_site_visits_line, {
            type: 'line',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                datasets: [{
                    label: ' Current Week Visits',
                    data: [879, 980, 594, 398, 1345, 1101, 1469],
                    backgroundColor: 'transparent',
                    borderColor: '#34495e',
                    borderWidth: 1,
                    lineTension: 0,
                    pointRadius: 3,
                    pointHitRadius: 5
                }, {
                    label: ' Last Week Visits',
                    data: [787, 591, 398, 402, 786, 978, 1150],
                    backgroundColor: 'transparent',
                    borderColor: '#37c6d3',
                    borderWidth: 1,
                    lineTension: 0,
                    pointRadius: 3,
                    pointHitRadius: 5
                }, {
                    label: ' Target Visits',
                    data: [900, 1000, 700, 400, 900, 1000, 1300],
                    backgroundColor: 'transparent',
                    borderColor: '#ed6b76',
                    borderWidth: 1,
                    lineTension: 0,
                    pointRadius: 3,
                    pointHitRadius: 5
                }]
            },
            options: {
                legend: {
                    display: false
                },
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
    // Social
    //

    var $ctx_socials_doughnut = $('#socials-doughnut');
    if ($ctx_socials_doughnut.length > 0) {
        new Chart($ctx_socials_doughnut, {
            type: 'doughnut',
            data: {
                labels: ['Fb', 'Tw', 'G+'],
                datasets: [{
                    label: ' Current Week Visits',
                    data: [879, 980, 594],
                    backgroundColor: [
                        'rgba( 55, 198, 211, .6)',
                        'rgba(241, 196,  15, .6)',
                        'rgba(237, 107, 118, .6)'
                    ],
                    hoverBackgroundColor: [
                        'rgba( 55, 198, 211, .8)',
                        'rgba(241, 196,  15, .8)',
                        'rgba(237, 107, 118, .8)'
                    ],
                    borderColor: 'rgba(255, 255, 255, 1)',
                    hoverBorderColor: 'rgba(255, 255, 255, 1)',
                    borderWidth: 1
                }]
            },
            options: {}
        });
    }

    //------------------------------------------------------------------------------------------------------------------
    // Modal Triggers
    //------------------------------------------------------------------------------------------------------------------

    $('#modal-triggered').on('show.bs.modal', function (event) {

        var button = $(event.relatedTarget),      // Button that triggered the modal
            recipient = button.data('triggered'), // Extract info from data-* attributes
            modal = $(this);

        modal.find('.modal-title').text('New message to ' + recipient);
        modal.find('.modal-body input').val(recipient);

    });

    //------------------------------------------------------------------------------------------------------------------
    // Task controls
    //------------------------------------------------------------------------------------------------------------------

    $('.task-control').on('change', function () {

        var is_checked = Number(this.checked),
            $task_row = $(this).parent().parent();

        if ($task_row == 'undefined' || $task_row.length == 0) return;

        if (is_checked) $task_row.addClass('task-completed');
        else $task_row.removeClass('task-completed');
    });

    //------------------------------------------------------------------------------------------------------------------
    // Closable Panels
    //------------------------------------------------------------------------------------------------------------------

    $('.panel-close').click(function(e) {

        e.preventDefault();
        e.stopPropagation();

        var target = $(this).attr('href');
        if (target == 'undefined') return;

        var $panel = $(target);
        if ($panel.length == 0) return;

        $panel.fadeOut();
        setTimeout(function() { $panel.remove(); }, 350);
    });

    //------------------------------------------------------------------------------------------------------------------
    // Set Social Wrapper Height
    //------------------------------------------------------------------------------------------------------------------

    function resizeJS100pWrapper() {

        var w_height = $(window).height(),
            w_offset = $js100p_wrapper.offset().top,
            w_bottom = 20;

        if (w_height == 'undefined' || w_offset == 'undefined') return;

        $js100p_wrapper.css('height', w_height - w_offset - w_bottom);
    }

    var $js100p_wrapper = $('.js-100p-wrapper');
    if ($js100p_wrapper.length > 0) {
        resizeJS100pWrapper();
        $(window).resize(resizeJS100pWrapper);
    }

    //------------------------------------------------------------------------------------------------------------------
    // Finish loading
    //------------------------------------------------------------------------------------------------------------------

    $(window).load(function() {

        /* Remove preloader */

        $loader.delay(1500).fadeOut();
        $preloader.delay(500).fadeOut('slow');

        $body.addClass('loaded');
    });

});