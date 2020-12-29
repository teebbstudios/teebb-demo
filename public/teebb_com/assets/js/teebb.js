$(function () {
    var contactButton = $('.contact-button');
    var contactInfo = $('.contact-info');

    contactButton.on('click', function (element) {
        $(this).addClass('d-none');
        contactInfo.fadeIn(600);
    });
    $('.close-info').on('click', function (element) {
        contactInfo.css('display', 'none');
        contactButton.removeClass('d-none');
    });

    //视频播放获取上一节、下一节课程链接, 课程列表已存在
    var courseList = $('#coursesList');
    if (courseList.length > 0) {
        var currentCourse = courseList.find('a.active');
        var courseItem = $('#coursesList a');
        var currentIndex = courseItem.index(currentCourse);
        var totalCoursesNum = courseItem.length;

        var prevHref = currentIndex === 0 ? 'disable' : courseItem.eq(currentIndex - 1).attr('href');
        var nextHref = currentIndex === totalCoursesNum - 1 ? 'disable' : courseItem.eq(currentIndex + 1).attr('href');

        var prevBtn = $('#prevBtn');
        if (prevHref === 'disable') {
            prevBtn.addClass('disabled');
        } else {
            prevBtn.attr('href', prevHref);
        }
        var nextBtn = $('#nextBtn');
        if (nextHref === 'disable') {
            nextBtn.addClass('disabled');
        } else {
            nextBtn.attr('href', nextHref);
        }
    }
});