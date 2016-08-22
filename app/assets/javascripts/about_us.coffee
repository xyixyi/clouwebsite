# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
    # 电动汽车生态圈
    $('#aboutustwo').hover ->
        $('.redborderbottom').removeClass 'redborderbottom'
        $(this).addClass 'redborderbottom'
        $('.distribution-images').css 'background-image', 'url("../img/about_us/02.webp")'
        return
    # 新能源
    $('#aboutusone').hover ->
        $('.redborderbottom').removeClass 'redborderbottom'
        $(this).addClass 'redborderbottom'
        $('.distribution-images').css 'background-image', 'url("../img/about_us/01.webp")'
        return
        # 智能电网
    $('#aboutusthree').hover ->
        $('.redborderbottom').removeClass 'redborderbottom'
        $(this).addClass 'redborderbottom'
        $('.distribution-images').css 'background-image', 'url("../img/about_us/03.webp")'
        return
        
        # 能源只能服务
    $('#aboutusfour').hover ->
        $('.redborderbottom').removeClass 'redborderbottom'
        $(this).addClass 'redborderbottom'
        $('.distribution-images').css 'background-image', 'url("../img/about_us/04.webp")'
        return
        # 智慧工业
    $('#aboutusfive').hover ->
        $('.redborderbottom').removeClass 'redborderbottom'
        $(this).addClass 'redborderbottom'
        $('.distribution-images').css 'background-image', 'url("../img/about_us/05.webp")'
        return
        # 智慧城市
    $('#aboutussix').hover ->
        $('.redborderbottom').removeClass 'redborderbottom'
        $(this).addClass 'redborderbottom'
        $('.distribution-images').css 'background-image', 'url("../img/about_us/06.webp")'
        return
        # 能源金融
    $('#aboutusseven').hover ->
        $('.redborderbottom').removeClass 'redborderbottom'
        $(this).addClass 'redborderbottom'
        $('.distribution-images').css 'background-image', 'url("../img/about_us/07.webp")'
        return
    return