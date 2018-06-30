var winwd, winht, size, winint
var navflag = 0;

var instaini;

//page panels
var pagepanel_cur = 0;
var pagepanel_amt = $('.page-panel').length;


// User agent detection
var mobile_detect = new MobileDetect(window.navigator.userAgent);
var isdesktop = 1;
if(mobile_detect.mobile() || mobile_detect.phone()) { isdesktop = 0; $('html').addClass('is-mobile'); }

var scrollInt;
var cur_st = 0;
var scrollwheel_int;
var scrollwheel_flag = 0;
var navi_imgint;
var navi_imgcur = 0;
var fp_int;
var fp_intcount = 0;
var journallist_count = 0;

//Form error checks, returns 1 or 0
function trimStr (str) {
		return str.replace(/^\s\s*/, '').replace(/\s\s*$/, '');
}
function checkTFieldValue(target,value,errorclass, errtarget) {
	if($(target).val() !== null) {
		if(trimStr($(target).val()) == value) {
			if(errtarget == 'parent') {
			$(target).parent().addClass(errorclass);  
			} else {
			$(target).addClass(errorclass);
			}
			return 1;
		} else{
			return 0;
		}
	} else {
		if(errtarget == 'parent') {
          $(target).parent().addClass(errorclass);  
        } else {
		  $(target).addClass(errorclass);
		}
		return 1;
	}
}
function checkEmailValue(target,value,errorclass, errtarget) {
	var err = 0;
	var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	if(trimStr($(target).val()) == value) {
		if(errtarget == 'parent') {
          $(target).parent().addClass(errorclass);  
        } else {
		  $(target).addClass(errorclass);
        }
		err = 1;
	} else if(!emailReg.test($(target).val())) {
		if(errtarget == 'parent') {
          $(target).parent().addClass(errorclass);  
        } else {
		  $(target).addClass(errorclass);
        }
		err = 1;
	}
	return err;
}
//Contact Form
function setupContactForm() {
    
	$('#contact_form #fsubmit').click(function(e){
		e.preventDefault();
		//check values
		//console.log('submit');
		
		var errflag = 0;
		$('.form-err').removeClass('form-err');
		
		errflag += checkTFieldValue('#fname','','form-err','parent');
		errflag += checkEmailValue('#femail','','form-err','parent');
		errflag += checkTFieldValue('#ftelephone','','form-err','parent');
		errflag += checkTFieldValue('#fcompany','','form-err','parent');
		errflag += checkTFieldValue('#ftypeofenquiry','','form-err','parent');
		errflag += checkTFieldValue('#fmessage','','form-err','parent');

        //change the value of fsetreci

		if(errflag == 0) {
			//form ok to submit
             var $form = $('#contact_form');
			 console.log('submitting');
            $.post(
                $form.attr('action'),
                $form.serialize(),
                function (data) {
                    console.log(data);
					if(data.success) {
                        $('#contactform_container').html('<div id="form_thankyou"><p><span>Thank you</span><br/><span>&mdash;</span><br/>We have received your message and<br/>will respond to you shortly.</p></div>');
                    } 
                },
                "json"
            );  
		}
		
		
	});
}


//Gallery
var isGallery = 0;
var isInGallery = 0;
var gallcur = 0;
var galltotal = 0;
var gallgroup;
var gallic, gallicid;
var slides_curpos = 0;
var gallint;

gallerySwitch = function(pos) {
	if(isInGallery == 1 && pos != gallcur) {
		
		var newp = gallgroup.find('.gallery-thumbpanel').eq(pos);
		var gitype = newp.data('type');
		var gtext = "";
		
		var gyt_width = 800;
		var gyt_ht = 450;
		
		if(size == 'small' || size == 'medium') {
			gyt_width = winwd-10;
			gyt_ht = Math.floor(gyt_width/16) * 9;
		}

			if(gitype == "youku") {
				
				if(size == 'small' && winwd > winht) {
					gyt_width = winwd - 160;
					gyt_ht =Math.floor(gyt_width/16) * 9;
				}		
				gtext += '<video width="'+gyt_width+'" height="'+gyt_ht+'" preload="auto" autoplay><source src="'+newp.data('imagelink')+'" type="video/mp4"><source src="'+newp.data('imagelink')+'" type="video/ogg"></video>'
				
			} else if(gitype == "youtube") {
			if(size == 'small' && winwd > winht) {
					gyt_width = winwd - 160;
					gyt_ht =Math.floor(gyt_width/16) * 9;
				}
			
			gtext += '<iframe width="'+gyt_width+'" height="'+gyt_ht+'" src="https://www.youtube.com/embed/'+newp.data('imagelink')+'?autoplay=1" frameborder="0" allowfullscreen></iframe>'
			
		}  else {
			//gtext += '<img class="" src="'+newp.data('imagelink')+'"/>';
			gtext += '<div class="inner-galleryimg" style="background-image: url('+newp.data('imagelink')+');"><img class="hidden" src="'+newp.data('imagelink')+'"/></div>';
		}
		
		
		//load image
		gtext += '<div class="gallery-imagetitle">'+newp.attr('title')+'</div>';
        
         $('.gallery-imagetext').text((pos+1)+ " / " + galltotal);
        
		gallicid.html(gtext);
		
		if(gitype == 'image') {
			gallicid.addClass('off');
		} else {
			gallicid.css({'left':(winwd - gyt_width)/2, 'top':(winht - gyt_ht)/2});
		}

		gallicid.html(gtext);
		gallicid.find('img').on('load',function(){
			
			gallicid.removeClass('off');
			
			//gallicid.css({'left':(winwd - $(this).width())/2, 'top':(winht - $(this).height())/2});
		});
		$('.gallery-prevbutton, .gallery-nextbutton').removeClass('disabled');
		
		if(pos == 0) {
			$('.gallery-prevbutton').addClass('disabled');
		} else if(pos == galltotal - 1) {
			$('.gallery-nextbutton').addClass('disabled');
		} 
		
		gallcur = pos;
	}
}

setGalleryPlay = function() {
    $('.gallery-pauseplay').removeClass('stop');
    gallint = setInterval(function() {
        var ngallcur = gallcur + 1;
        if(ngallcur >= galltotal) {
            ngallcur = 0;
        }
        gallerySwitch(ngallcur);
    },6000);
}


setupGallery = function(){
	isGallery = 1;
	gallic = $('#gallery_imagecontainer');
	gallicid = $('#gallery_imagecontainer .gallery-imagepanel');
	
	if(isdesktop == 1){
        //setup keys for gallery
        
        $(document).on('keydown',function(e) {
           if(isInGallery == 1) {
               switch (e.which) {
                   case 37:
                       $('.gallery-prevbutton').trigger('click');
                       break;
                   case 39:
                       $('.gallery-nextbutton').trigger('click');
                       break;
                   case 27:
                       $('.gallery-closebutton').trigger('click');
                       break;
               } 
           }
        });
        console.log('logging');
	} else {
        //setup swipe
        gallic.swipe( {
            swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
                switch(direction) {
                    case "left":
                        $('.gallery-nextbutton').trigger('click');
                        break;
                    case "right":
                        $('.gallery-prevbutton').trigger('click');
                        break;
                }
            }
        });
    }
	
	$('.gallery-thumbpanel').click(function(e){
		e.preventDefault();
		e.stopPropagation();
		if(isInGallery == 0) {
			gallgroup = $(this).parent();
			gallcur = $(this).index();
			galltotal = gallgroup.find('.gallery-thumbpanel').length;
			
			var gitype = $(this).data('type');
			var gtext = "";
			
			var gyt_width = 800;
			var gyt_ht = 450;
			
			if(size == 'small' || size == 'medium') {
				gyt_width = winwd-10;
				gyt_ht = Math.floor(gyt_width/16) * 9;
			}
			
			if(gitype == "youku") {
				if(size == 'small' && winwd > winht) {
					gyt_width = winwd - 160;
					gyt_ht =Math.floor(gyt_width/16) * 9;
				}
				
				gtext += '<video width="'+gyt_width+'" height="'+gyt_ht+'" preload="auto" autoplay><source src="'+$(this).data('imagelink')+'" type="video/mp4"><source src="'+$(this).data('imagelink')+'" type="video/ogg"></video>'
				
			} else if(gitype == "youtube") {
				
				
				if(size == 'small' && winwd > winht) {
					gyt_width = winwd - 160;
					gyt_ht =Math.floor(gyt_width/16) * 9;
				}
				
				gtext += '<iframe width="'+gyt_width+'" height="'+gyt_ht+'" src="https://www.youtube.com/embed/'+$(this).data('imagelink')+'?autoplay=1" frameborder="0" allowfullscreen></iframe>'
				
			} else {
				
				//gtext += '<img class="" src="'+$(this).data('imagelink')+'"/>';
				gtext += '<div class="inner-galleryimg" style="background-image: url('+$(this).data('imagelink')+');"><img class="hidden" src="'+$(this).data('imagelink')+'"/></div>';
				
			}
			
            //load image
			gtext += '<div class="gallery-imagetitle">'+$(this).attr('title')+'</div>';
            
            $('.gallery-imagetext').text((gallcur+1)+ " / " + galltotal);
            
			gallicid.html(gtext);
			
			if(gitype == 'image') {
				gallicid.addClass('off');
			} else {
				//gallicid.css({'left':(winwd - gyt_width)/2, 'top':(winht - gyt_ht)/2});
			}
			
			$('.gallery-prevbutton, .gallery-nextbutton').removeClass('disabled');
			console.log('gallcur:'+gallcur);
			if(gallcur == 0) {
				$('.gallery-prevbutton').addClass('disabled');
				if (galltotal == 1) {
					$('.gallery-nextbutton').addClass('disabled');
				}
			} else if(gallcur == galltotal - 1) {
				$('.gallery-nextbutton').addClass('disabled');
			} 
				
			
			
			gallicid.find('img').on('load',function(){
				gallicid.removeClass('off');
				//gallicid.css({'left':(winwd - $(this).width())/2, 'top':(winht - $(this).height())/2});
			});
			
			/*$('#gallery_imagecontainer .gallery-imagepanel img').on('load',function(){
				gallicid.removeClass('off');
				//alert('zz');
				gallicid.css({'left':(winwd - $(this).find('img').eq(0).width())/2, 'top':(winht - $(this).find('img').eq(0).height())/2});
			});*/
			setGalleryPlay();
			isInGallery = 1;
			$('body').addClass('constrictheight');
			gallic.stop(true,true).fadeIn(400);
		}
	});
	//if(isdesktop == 1) {
        $('#button_slideshow').click(function(){
            $('.gallery-thumbpanel').eq(0).trigger('click');
        });

        /*$('.project-img').click(function(){

            var nindex = $(this).index('.project-img') + 1;
            $('.gallery-thumbpanel').eq(nindex).trigger('click');
        });
        */
    //}
    
	
	$('.gallery-closebutton').click(function(e){
		e.preventDefault();
		e.stopPropagation();
		$('body').removeClass('constrictheight');
		isInGallery = 0;
        clearInterval(gallint);
        $('.gallery-pauseplay').removeClass('add');
		gallic.stop(true,true).fadeOut(400,function(){
			gallicid.empty();
			//gallicid.css({'left':0});
		});
	});
	
	//next and prev
	$('.gallery-nextbutton').click(function(e){
		e.preventDefault();
		e.stopPropagation();
        clearInterval(gallint);
        $('.gallery-pauseplay').addClass('stop');
		var newpos = gallcur+1;
		if(newpos >= galltotal) { newpos = galltotal-1; }
		gallerySwitch(newpos);
	});
	$('.gallery-prevbutton').click(function(e){
		e.preventDefault();
		e.stopPropagation();
        clearInterval(gallint);
        $('.gallery-pauseplay').addClass('stop');
		var newpos = gallcur-1;
		if(newpos <= 0) { newpos = 0; }
		gallerySwitch(newpos);
	});
    
    $('.gallery-pauseplay').click(function(e){
		e.preventDefault();
		e.stopPropagation();
        if($(this).hasClass('stop')){
            setGalleryPlay();
        } else {
            clearInterval(gallint);
            $('.gallery-pauseplay').addClass('stop');
        }

	});
    
	
}
//End Gallery

//
cmp = function(x, y){
    return x > y ? 1 : x < y ? -1 : 0; 
};

//list sort
displayListSort = function() {

	listsort.sort(function(a, b){
		//sort
		if($('.listsort-button[data-sort="year"]').hasClass('toggle')) {
			//year ascending
			if($('.listsort-button[data-sort="project"]').hasClass('toggle')) {
				//project ascending 
				return cmp( 
					[cmp(a.year, b.year), cmp(a.project.toLowerCase(), b.project.toLowerCase())], 
					[cmp(b.year, a.year), cmp(b.project.toLowerCase(), a.project.toLowerCase())]
				);
			} else {
				//project descending Z-A
				return cmp( 
					[cmp(a.year, b.year), -cmp(a.project.toLowerCase(), b.project.toLowerCase())], 
					[cmp(b.year, a.year), -cmp(b.project.toLowerCase(), a.project.toLowerCase())]
				);
			}
		} else {
			//year descending
			if($('.listsort-button[data-sort="project"]').hasClass('toggle')) {
				//project ascending A-Z
				return cmp( 
					[-cmp(a.year, b.year), cmp(a.project.toLowerCase(), b.project.toLowerCase())], 
					[-cmp(b.year, a.year), cmp(b.project.toLowerCase(), a.project.toLowerCase())]
				);
			} else {
				//project descending Z-A
				return cmp( 
					[-cmp(a.year, b.year), -cmp(a.project.toLowerCase(), b.project.toLowerCase())], 
					[-cmp(b.year, a.year), -cmp(b.project.toLowerCase(), a.project.toLowerCase())]
				);
			}
		}
	});


	//listsort
	var nhtml = '';
	for( var i = 0; i< listsort.length ;i++) {
		nhtml += '<div class="listsort-row"><div class="listsort-col" data-col="year">'+listsort[i].year+'</div><div class="listsort-col" data-col="project">'+listsort[i].project+'</div><div class="listsort-col" data-col="scope">'+listsort[i].scope+'</div></div>';
	}
	$('#listsort_content').html(nhtml);
}


intervalCheck = function() {
    var st = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
	var stdiff = cur_st - st;

    if(st != cur_st) {
        
		if(st > 150 && !$('header').hasClass('ntop')) {
			$('header').addClass('ntop');
		} else if(st <= 150 && $('header').hasClass('ntop')){
			$('header').removeClass('ntop');
		}
		
		if(cur_st > st && $('header').hasClass('off')) {
			$('header').removeClass('off');
			//console.log('up');
		} else if (cur_st < st && !$('header').hasClass('off') && st > 150) {
			//console.log('down');
			$('header').addClass('off');
		}


		/*if( ($('body').height() - st ) < 1500  && !$('#button_backtotop').hasClass('toggle')) {
			$('#button_backtotop').addClass('toggle')
		} else if(($('body').height() - st ) >= 1500 && $('#button_backtotop').hasClass('toggle')){
			$('#button_backtotop').removeClass('toggle');
		}*/

		if( st > 500  && !$('#button_backtotop').hasClass('toggle')) {
			$('#button_backtotop').addClass('toggle')
		} else if(st <= 500 && $('#button_backtotop').hasClass('toggle')){
			$('#button_backtotop').removeClass('toggle');
		}
		//console.log($('body').height() - st);

        cur_st = st;
    }
}


winResize = function() {
	clearTimeout(winint);
	winint = setTimeout(calculatePositions,150);
} 


calculatePositions = function() {
	winwd = $(window).innerWidth();
	winht = $(window).innerHeight();
	size = $('#breakpoints div:visible').first().data('size');
}

window.addEventListener("pageshow", function() {
	//scrollInt = setInterval(intervalCheck, 50);

	$('#transition_bg').velocity('stop').velocity("fadeOut", {duration:800, complete: function(){

		//for panel pages (initial animation)
		$('.page-panel').eq(0).removeClass('ani-outbottom');
		//$('#pagepanel_buttoncontainer').addClass('toggle');
		$('.pagepanel-button').eq(0).addClass('active');

		$('.masthead-panel').eq(0).addClass('active');

		//in view
		$('.projectgrid-anchor, .jl-anchor').one('inview', function(event2, isInView) {
			if (isInView) {
				// element is now visible in the viewport
				$(this).parent().addClass('toggle');
			}
		});
		$('img.img-ani').one('inview', function(event2, isInView) {
			if (isInView) {
				// element is now visible in the viewport
				$(this).addClass('toggle');
			}
		});

		//frontpages
		if($('.page-front').length > 0) {
			fp_int = setInterval(function(){
				//animate every 0.5s
				fp_intcount++;

				//no default
				switch(fp_intcount) {
					case 4:
						$('.front-texttop').addClass('toggle');
						$('#logo, #top_navi_button').removeClass('ani-fadein');
						break;

					case 14:
						$('.front-texttop').removeClass('toggle');
						break;
					
					case 16:
						clearInterval(fp_int);
						$('.front-textbottom').addClass('toggle');
						break;
				}
			},500);
			var fp_imgamt = $('.front-img').length;
			var fp_imgcur = 0;
			$('.front-img').eq(0).addClass('active');
			fp_imgint = setInterval(function(){
				var imgcur = fp_imgcur+1;
				if(imgcur > fp_imgamt-1) { imgcur = 0;}
				$('.front-img').removeClass('active');
				$('.front-img').eq(imgcur).addClass('active');
				fp_imgcur = imgcur;
			},9000);
		} else {
			$('#logo, #top_navi_button').removeClass('ani-fadein');
		}

		//navi_imgint random from a set
		/*navi_imgint = setInterval(function(){
			$('.navigation-projectpanel').removeClass('active');
			$('#navigation_projectbg').removeClass();
			
			navi_imgcur = navi_imgcur + 1;
			if(navi_imgcur >= $('.navigation-projectpanel').length) {
				navi_imgcur = 0;
			}

			$('.navigation-projectpanel').eq(navi_imgcur).addClass('active');
			$('#navigation_projectbg').addClass($('.navigation-projectpanel').eq(navi_imgcur).attr('data-bgclass'));
			
		},5000);*/
		var imgran = Math.floor((Math.random() * $('.navigation-projectpanel').length));
		$('.navigation-projectpanel').removeClass('active');
		$('#navigation_projectbg').removeClass();
		$('.navigation-projectpanel').eq(imgran).addClass('active');
		$('#navigation_projectbg').addClass($('.navigation-projectpanel').eq(imgran).attr('data-bgclass'));
		

	}});
});

$(function(){
	$(window).bind("resize", function(){
		winResize();
	});
	$(window).on("orientationchange",function(){ winResize();});
	calculatePositions();
	
	//internal links
	$('a.internal-link').click(function(e){
		e.preventDefault();
		var loc = $(this).attr('href');	
		if(loc != "#") {
			if($(this).hasClass('nav-title') && $(this).parent().hasClass('has-dropdown')) {
				return false;
			} else {
				$('#transition_bg').velocity('stop').velocity("fadeIn", {duration:800, complete: function(){
						window.location = loc;
					}
				});
			}
		}	
	});

	$('#top_navi_button').click(function(e){
		e.preventDefault();
		e.stopPropagation();
		if(navflag == 0){
			$('.page-panel-popup-close').trigger('click');

			$('#top_navi_button .hamburger').addClass('is-active');
			$('#social_container').addClass('toggle');
			$('body').addClass('body-noscroll');
			/*$('#navigation_overlay_left').stop(true,true).velocity('transition.perspectiveLeftIn', {
				duration: 800,
				easing: "linear"
			});
			$('#navigation_overlay_right').stop(true,true).velocity('transition.perspectiveRightIn', {
				duration: 800,
				delay: 200,
				easing: "linear"
			});
			*/
			$('#navigation_overlay').addClass('toggle');

			
			navflag = 1;
		} else {
			$('#top_navi_button .hamburger').removeClass('is-active');
			$('#social_container').removeClass('toggle');
			$('body').removeClass('body-noscroll');
			/*$('#navigation_overlay_left').stop(true,true).velocity('transition.perspectiveLeftOut', {
				duration: 800,
				easing: "linear"
			});
			$('#navigation_overlay_right').stop(true,true).velocity('transition.perspectiveRightOut', {
				duration: 800,
				delay: 100,
				easing: "linear",
				complete: function() {
					
				}
			});*/
			$('#navigation_overlay').removeClass('toggle');

			
			navflag = 0;
		}
	});

	//load more for journal
	journallist_count = $('.journallisting-panel').length;
	if(journallist_count == parseInt($('#journallisting_container').attr('data-tentries'))) {
		$('.journal-loadmorepanel').addClass('noload');
	}
	$('#journallisting_loadmore').click(function(e){
		e.preventDefault();
		e.stopPropagation();

		//load click
		$.get(site_url+'index.php/embeds/journal-entries/'+journallist_count,function(data){
			if(data != '') {
				$('#journallisting_container').append(data);

				//unbind and rebind
				$('.jl-anchor:not(.toggle)').off('inview');
				$('.jl-anchor:not(.toggle)').one('inview', function(event2, isInView) {
					if (isInView) {
						// element is now visible in the viewport
						$(this).parent().addClass('toggle');
					}
				});
				journallist_count = $('.journallisting-panel').length;
				if(journallist_count == parseInt($('#journallisting_container').attr('data-tentries'))) {
					$('.journal-loadmorepanel').addClass('noload');
				}

			} else {
				console.log('no more to load');
			}
		});

	});

	//project inner
    if($('#slideshow_container').length > 0){
        setupGallery();
    }

	//popup toggles
	$('.page-panel-popup-button').click(function(e){
		e.preventDefault();
		e.stopPropagation();

		var content = $(this).next('.page-panel-popup').find('.page-panel-popup-scrollc').html();
		var bgclass = $(this).next('.page-panel-popup').attr('data-bgcolor');

		$('body').addClass('body-noscroll');
		$(this).next('.page-panel-popup').addClass('toggle');
		$(this).addClass('toggle');

		$('#mpopup_container').find('.page-panel-popup-scrollc').html(content);
		$('#mpopup_container').addClass('toggle');
		$('#mpopup_container').attr('data-bgcolor', bgclass);

		if(size == "small") {

			$('header').addClass('off');
		}
	});
	$('.page-panel-popup-close').click(function(e){
		e.preventDefault();
		e.stopPropagation();
		$('body').removeClass('body-noscroll');
		$('.page-panel-popup-button').removeClass('toggle');
		$('.page-panel-popup').removeClass('toggle');
		$('#mpopup_container').removeClass('toggle');
	});

	//page panel toggles and appends
	$('.page-panel').addClass('ani-outbottom');
	$('.page-panel').append('<!--<div class="pp-up"></div>--><div class="pp-down"></div>');

	//scrolls for pagecontainer
	if($('#page_panelcontainer').length > 0) {
		//mousewheel
		$('#page_panelcontainer').on('mousewheel', function(event) {
			//console.log(event.deltaX, event.deltaY, event.deltaFactor);

			if(!$('body').hasClass('body-noscroll')){
				if(scrollwheel_flag == 0 ){
					scrollwheel_flag = 1;
					scrollwheel_int = setTimeout(function(){ scrollwheel_flag = 0; },1200);
					if(event.deltaY == -1) {
						//next
						pagePanelShift(1);
					} else if(event.deltaY == 1) {
						//prev
						pagePanelShift(-1);
					}
				}
			}

		});
		//swipes
		$('#page_panelcontainer').swipe({
			swipeUp: function() {
				if(!$('body').hasClass('body-noscroll')){
					pagePanelShift(1);
				}
			},
			swipeDown: function() {
				if(!$('body').hasClass('body-noscroll')){
					pagePanelShift(-1);
				}
			},
			allowPageScroll:"vertical"
		});
		 $(document).keyup(function(e){
			console.log(e);
			if(e.which == 38) {
				//up
				if(!$('body').hasClass('body-noscroll')){
					pagePanelShift(-1);
				}
			} else if(e.which == 40) {
				//down
				if(!$('body').hasClass('body-noscroll')){
					pagePanelShift(1);
				}
			} else if (e.which == 36) {
				//home
			}
		});
		//arrows
		$('#page_panelcontainer .pp-up').click(function(e){
			e.preventDefault();
			e.stopPropagation();
			pagePanelShift(-1);
		});
		$('#page_panelcontainer .pp-down').click(function(e){
			e.preventDefault();
			e.stopPropagation();
			pagePanelShift(1);
		});
		$('.anchor-scroll').click(function(e){
			e.preventDefault();
			e.stopPropagation();

			if(size =="small" || size =="medium") {
				$('.page-panel').eq(1).velocity("scroll",{duration:800});
			} else {
				pagePanelShift(1);
			}
		});
		//buttons
		$('.pagepanel-button').click(function(e){
			e.preventDefault();
			e.stopPropagation();
			var nindex = $(this).index();
			pagePanelJump(nindex);
		})

	}

	//contact page 
	$('.tab-button').click(function(e){
		e.preventDefault();
		e.stopPropagation();
		var nindex = $(this).index('.tab-button');

		$(this).parent().find('.tab-button').removeClass('active');
		$(this).addClass('active');

		$('.tab-panel').removeClass('active');
		$('.tab-panel').eq(nindex).addClass('active');
	})
	setupContactForm();

	//listing page
	if($('#listsort_content').length >0 && typeof listsort != 'undefined') {

		$('.listsort-button:not(.nosort)').click(function(e){
			e.preventDefault();
			e.stopPropagation();
			$(this).toggleClass('toggle');
			displayListSort();
		})

		//display
		displayListSort();


	}

	//backtotop
	$('#button_backtotop').click(function(e){
		e.preventDefault();
		e.stopPropagation();
		backtotop();
	});

	//video popup
	if($('#video_popupoverlay').length >0) {
		$('#video_popupoverlay').popup({
			opacity: 0.9,
			transition: 'all 0.3s',
			onclose: function() {
				$('#video_popupoverlay iframe').attr('src','');
			}
		  });

		$('.masthead-panel-playvideo').click(function(e){
			e.preventDefault();
			e.stopPropagation();
			$('#video_popupoverlay iframe').attr('src',$(this).attr('data-link'));
			$('#video_popupoverlay').popup('show');
		})
		$('.videogrid-link').click(function(e){
			e.preventDefault();
			e.stopPropagation();
			$('#video_popupoverlay iframe').attr('src',$(this).attr('href'));
			$('#video_popupoverlay').popup('show');
		})
		$('#video_popupclose').click(function(e){
			e.preventDefault();
			e.stopPropagation();
			$('#video_popupoverlay').popup('hide');
		});
	}

	//instagram
    if($('#social_instagram_container').length > 0) {
        
        var instalimit = 9;
		var ltwfeed;
		
        $.ajax({
			url: site_url + "assets/includes/instagram.php",
			type: "POST",
            data: {
                inid: "instaacct"
            },
			datatype: "text",
			success: function(res) { 
                ltwfeed = new Instafeed({
                    get: 'user',
                    userId: 2247442295,
                    target: 'instagram_itemcontainer',
                    accessToken: res,
					limit: instalimit,
					sortBy: "most-recent",
                    resolution: 'standard_resolution',
                    template: '<div class="instagram-item"><a href="{{link}}" target="_blank"><div class="instagram-iteminner"  style="background-image:url({{image}});"></div></a></div>',
                    after: function() {

                        if (!this.hasNext()) {
							$('.instagram-loadmore').parent().html('<span class="nopost">No more posts</span>');
						}
                        
                    }
                });
				
				$('.instagram-loadmore').click(function(e){
					e.preventDefault();
					ltwfeed.next();
				});

                ltwfeed.run();
            }
		});
        
        
        
	}
	
	//Journal Images
	$('#journal_content img').addClass('img-ani');


	scrollInt = setInterval(intervalCheck, 50);
});

//page panel functions
function pagePanelShift(pos) {
	if(pos == -1) {
		//shift prev
		var ncur = pagepanel_cur - 1;
		if(ncur < 0) {
			ncur = 0;
		} else {
			$('.page-panel').eq(pagepanel_cur).addClass('ani-outbottom');
			$('.page-panel').eq(ncur).removeClass('ani-outtop ani-outbottom');
			$('.pagepanel-button').removeClass('active');
			$('.pagepanel-button').eq(ncur).addClass('active');
			pagepanel_cur = ncur;
		}

		$('footer').removeClass('toggle');
	} else {
		//shift next
		var ncur = pagepanel_cur + 1;
		if(ncur >= pagepanel_amt) {
			ncur = pagepanel_amt-1;
		} else {
			$('.page-panel').eq(pagepanel_cur).addClass('ani-outtop');
			$('.page-panel').eq(ncur).removeClass('ani-outtop ani-outbottom');
			$('.pagepanel-button').removeClass('active');
			$('.pagepanel-button').eq(ncur).addClass('active');
			pagepanel_cur = ncur;
		}
		if(ncur == pagepanel_amt -1) {
			//last panel
			$('footer').addClass('toggle');
		} else {
			$('footer').removeClass('toggle');
		}
	}

	if(pagepanel_cur == 0){
		$('#pagepanel_buttoncontainer').removeClass('toggle');
	} else {
		if(!$('#pagepanel_buttoncontainer').hasClass('toggle')) {
			$('#pagepanel_buttoncontainer').addClass('toggle');
		}
	}

}
//jump
function pagePanelJump(pos) {
	if(pagepanel_cur != pos) {
		if(pagepanel_cur < pos) {
			for(var i = pagepanel_cur;i<pos;i++) {
				$('.page-panel').eq(i).removeClass('ani-outtop ani-outbottom').addClass('ani-outtop');
			}
			$('.page-panel').eq(pos).removeClass('ani-outtop ani-outbottom');
			$('.pagepanel-button').removeClass('active');
			$('.pagepanel-button').eq(pos).addClass('active');
			
		} else {
			for(var i = pos+1;i<=pagepanel_cur;i++) {
				$('.page-panel').eq(i).removeClass('ani-outtop ani-outbottom').addClass('ani-outbottom');
			}
			$('.page-panel').eq(pos).removeClass('ani-outtop ani-outbottom');
			$('.pagepanel-button').removeClass('active');
			$('.pagepanel-button').eq(pos).addClass('active');
		}

		pagepanel_cur = pos;

		if(pos == pagepanel_amt -1) {
			//last panel
			$('footer').addClass('toggle');
		} else {
			$('footer').removeClass('toggle');
		}

		if(pagepanel_cur == 0){
			$('#pagepanel_buttoncontainer').removeClass('toggle');
		} else {
			if(!$('#pagepanel_buttoncontainer').hasClass('toggle')) {
				$('#pagepanel_buttoncontainer').addClass('toggle');
			}
		}

	}
}

//backtotop
function backtotop() {
	if($('#page_panelcontainer').length > 0 && size != 'small') {
		//panel pages
		$('.page-panel').removeClass('ani-outtop ani-outbottom').addClass('ani-outbottom');
		$('.page-panel').eq(0).removeClass('ani-outtop ani-outbottom');
		pagepanel_cur = 0;
	} else {
		//normal scroll pages
		console.log('backtotop');
		$('body').velocity("scroll", { duration: 800});
	}
}