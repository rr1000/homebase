// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$('document').ready(function(){
    // Mobile menu
    var nav = $('.main-header nav');
    var navIcon = $('.main-header .menu');
    navIcon.click(function(){ nav.fadeToggle(350); });

    // Calendar tabs
    $("#dayOne").hide(0);
    $("#dayThree").hide(0);
    $("#dayFour").hide(0);

    $("#dayOneTab").click(function(){
        $(".active").removeClass("active");
        $("#dayTwo").hide(0);
        $("#dayThree").hide(0);
        $("#dayFour").hide(0);
        //
        $("#dayOne").show(0);
        $(this).addClass("active");
    });
    $("#dayTwoTab").click(function(){
        $(".active").removeClass("active");
        $("#dayOne").hide(0);
        $("#dayThree").hide(0);
        $("#dayFour").hide(0);
        //
        $("#dayTwo").show(0);
        $(this).addClass("active");
    });
    $("#dayThreeTab").click(function(){
        $(".active").removeClass("active");
        $("#dayOne").hide(0);
        $("#dayTwo").hide(0);
        $("#dayFour").hide(0);
        //
        $("#dayThree").show(0);
        $(this).addClass("active");
    });
    $("#dayFourTab").click(function(){
        $(".active").removeClass("active");
        $("#dayOne").hide(0);
        $("#dayTwo").hide(0);
        $("#dayThree").hide(0);
        //
        $("#dayFour").show(0);
        $(this).addClass("active");
    });
});
