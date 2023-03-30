(function ($) {
    "use strict";

    // Spinner
    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 1);
    };
    spinner();
    
    
    // Initiate the wowjs
    new WOW().init();


    // Sticky Navbar
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.sticky-top').css('top', '0px');
        } else {
            $('.sticky-top').css('top', '-100px');
        }
    });
    
    
    // Dropdown on mouse hover
    const $dropdown = $(".dropdown");
    const $dropdownToggle = $(".dropdown-toggle");
    const $dropdownMenu = $(".dropdown-menu");
    const showClass = "show";
    
    $(window).on("load resize", function() {
        if (this.matchMedia("(min-width: 992px)").matches) {
            $dropdown.hover(
            function() {
                const $this = $(this);
                $this.addClass(showClass);
                $this.find($dropdownToggle).attr("aria-expanded", "true");
                $this.find($dropdownMenu).addClass(showClass);
            },
            function() {
                const $this = $(this);
                $this.removeClass(showClass);
                $this.find($dropdownToggle).attr("aria-expanded", "false");
                $this.find($dropdownMenu).removeClass(showClass);
            }
            );
        } else {
            $dropdown.off("mouseenter mouseleave");
        }
    });
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });


    // Header carousel
    $(".header-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1500,
        items: 1,
        dots: false,
        loop: true,
        nav : true,
        navText : [
            '<i class="bi bi-chevron-left"></i>',
            '<i class="bi bi-chevron-right"></i>'
        ]
    });


    // Testimonials carousel
    $(".testimonial-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1000,
        center: true,
        margin: 24,
        dots: true,
        loop: true,
        nav : false,
        responsive: {
            0:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            }
        }
    });
    
})(jQuery);

/* 예고편 */
$(document).ready(function() {
    $('[data-vbg]').youtube_background(); // 실행
    });

    /* 찜 */

const like =() => {

   let num = document.getElementsByClassName('tgNum')[0]
   if(num.innerText == 0){
      num.innerText = Number(num.innerText)+1 
      console.log('찜 성공')
   } else if (num.innerText == 1){
      num.innerText = Number(num.innerText)-1 
      console.log('찜 취소')
   }
   
}

document.getElementById('cb5').addEventListener('click',like)

/* 별점 */

	let star1 = document.getElementById('one')
	let star2 = document.getElementById('two')
	let star3 = document.getElementById('three')
	let star4 = document.getElementById('four')
	let star5 = document.getElementById('five')
		
		
	let scoreNum = document.getElementsByClassName('tgNum')[1]
		

const score1 = () => {
	
	if(Number(scoreNum.innerText) == 0){		
		scoreNum.innerText = Number(scoreNum.innerText)+2	
		console.log(scoreNum.innerText)		
	} else if(Number(scoreNum.innerText) == 4){
		scoreNum.innerText = Number(scoreNum.innerText)-2
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 6){
		scoreNum.innerText = Number(scoreNum.innerText)-4
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 8){
		scoreNum.innerText = Number(scoreNum.innerText)-6	
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 10){
		scoreNum.innerText = Number(scoreNum.innerText)-8
		console.log(scoreNum.innerText)
	}
	
}

const score2 = () => {
	
	if(Number(scoreNum.innerText) == 0){
		scoreNum.innerText = Number(scoreNum.innerText)+4
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 2){
		scoreNum.innerText = Number(scoreNum.innerText)+2
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 6){
		scoreNum.innerText = Number(scoreNum.innerText)-2
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 8){
		scoreNum.innerText = Number(scoreNum.innerText)-4
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 10){
		scoreNum.innerText = Number(scoreNum.innerText)-6
		console.log(scoreNum.innerText)
	}
	
}

const score3 = () => {
	
	if(Number(scoreNum.innerText) == 0){
		scoreNum.innerText = Number(scoreNum.innerText)+6
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 2){
		scoreNum.innerText = Number(scoreNum.innerText)+4
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 4){
		scoreNum.innerText = Number(scoreNum.innerText)+2
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 8){
		scoreNum.innerText = Number(scoreNum.innerText)-2
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 10){
		scoreNum.innerText = Number(scoreNum.innerText)-4
		console.log(scoreNum.innerText)
	}
	
}

const score4 = () => {
	
	if(Number(scoreNum.innerText) == 0){
		scoreNum.innerText = Number(scoreNum.innerText)+8
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 2){
		scoreNum.innerText = Number(scoreNum.innerText)+6
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 4){
		scoreNum.innerText = Number(scoreNum.innerText)+4
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 6){
		scoreNum.innerText = Number(scoreNum.innerText)+2
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 10){
		scoreNum.innerText = Number(scoreNum.innerText)-2
		console.log(scoreNum.innerText)
	}
	
}

const score5 = () => {
	
	if(Number(scoreNum.innerText) == 0){
		scoreNum.innerText = Number(scoreNum.innerText)+10
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 2){
		scoreNum.innerText = Number(scoreNum.innerText)+8
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 4){
		scoreNum.innerText = Number(scoreNum.innerText)+6
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 6){
		scoreNum.innerText = Number(scoreNum.innerText)+4
		console.log(scoreNum.innerText)
	} else if(Number(scoreNum.innerText) == 8){
		scoreNum.innerText = Number(scoreNum.innerText)+2
		console.log(scoreNum.innerText)
	}
	
}

star1.onclick = score1
star2.onclick = score2
star3.onclick = score3
star4.onclick = score4
star5.onclick = score5
