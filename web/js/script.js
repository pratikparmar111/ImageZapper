
function showSplash(){
	$(".close").stop(true).animate({opacity:0},400,'swing', function(){ $(this).css({display:'none'}); });
	$("header").stop(true).delay(2000).animate({top:33},800,'easeInOutExpo'); 
	$(".splash").css({display:'block'}).stop(true).delay(2000).animate({opacity:1},800,'swing'); 
	$(".menu .nav7").stop(true).animate({left:825},800,'easeInOutExpo').animate({top:451},800,'easeInOutExpo');
	$(".menu .nav6").stop(true).delay(100).animate({left:671},800,'easeInOutExpo').animate({top:352},800,'easeInOutExpo');
	$(".menu .nav5").stop(true).delay(200).animate({left:462},800,'easeInOutExpo').animate({top:308},800,'easeInOutExpo');
	$(".menu .nav4").stop(true).delay(1100).animate({left:858},800,'easeInOutExpo').animate({top:143},800,'easeInOutExpo');
	$(".menu .nav3").stop(true).delay(1200).animate({left:484},800,'easeInOutExpo').animate({top:77},800,'easeInOutExpo');
	$(".menu .nav2").stop(true).delay(1300).animate({left:242},800,'easeInOutExpo').animate({top:198},800,'easeInOutExpo');
	$(".menu .nav1").stop(true).delay(1400).animate({left:66},800,'easeInOutExpo').animate({top:341},800,'easeInOutExpo');
  
};
function hideSplash(){   
   $(".close").css({display:'block'}).stop(true).delay(2000).animate({opacity:1},800,'easeOutExpo');
   $("header").stop(true).animate({top:11},800,'easeInOutExpo'); 
   $(".splash").stop(true).animate({opacity:0},400,'swing', function(){ $(this).css({display:'none'}); });
   $(".menu .nav1").stop(true).animate({top:88},800,'easeInOutExpo').animate({left:22},800,'easeInOutExpo');
   $(".menu .nav2").stop(true).delay(100).animate({top:88},800,'easeInOutExpo').animate({left:132},800,'easeInOutExpo');
   $(".menu .nav3").stop(true).delay(200).animate({top:88},800,'easeInOutExpo').animate({left:242},800,'easeInOutExpo');
   $(".menu .nav4").stop(true).delay(300).animate({top:88},800,'easeInOutExpo').animate({left:352},800,'easeInOutExpo');
   $(".menu .nav5").stop(true).delay(1200).animate({top:88},800,'easeInOutExpo').animate({left:462},800,'easeInOutExpo');
   $(".menu .nav6").stop(true).delay(800).animate({top:88},800,'easeInOutExpo').animate({left:572},800,'easeInOutExpo');
   $(".menu .nav7").stop(true).delay(900).animate({top:88},800,'easeInOutExpo').animate({left:682},800,'easeInOutExpo');
   
};
function hideSplashQ(){
	$(".close").css({display:'block', opacity:1});
	$("header").css({top:11}); 
	$(".splash").css({opacity:0, display:'none'});
	$(".menu .nav1").css({top:88, left:22}); 
	$(".menu .nav2").css({top:88, left:132}); 
	$(".menu .nav3").css({top:88, left:242}); 
	$(".menu .nav4").css({top:88, left:352}); 
	$(".menu .nav5").css({top:88, left:462}); 
	$(".menu .nav6").css({top:88, left:572}); 
	$(".menu .nav7").css({top:88, left:682}); 
};

///////////////////

$(document).ready(function() {
	////// sound control	
	$("#jquery_jplayer").jPlayer({
		ready: function () {
			$(this).jPlayer("setMedia", {
				mp3:"music.mp3"
			});
			//$(this).jPlayer("play");
			var click = document.ontouchstart === undefined ? 'click' : 'touchstart';
          	var kickoff = function () {
            $("#jquery_jplayer").jPlayer("play");
            document.documentElement.removeEventListener(click, kickoff, true);
         	};
          	document.documentElement.addEventListener(click, kickoff, true);
		},
		
		repeat: function(event) { // Override the default jPlayer repeat event handler				
				$(this).bind($.jPlayer.event.ended + ".jPlayer.jPlayerRepeat", function() {
					$(this).jPlayer("play");
				});			
		},
		swfPath: "js",
		cssSelectorAncestor: "#jp_container",
		supplied: "mp3",
		wmode: "window"
	});
	
	/////// icons
	$(".icons li").find("a").css({opacity:0.7});
	$(".icons li a").hover(function() {
		$(this).stop().animate({opacity:1}, 400, 'easeOutBack');		    
	},function(){
	    $(this).stop().animate({opacity:0.7}, 400, 'easeOutBack' );		   
	});
	
	///////// splash images	
	$('.splash_1 > a, .splash_2 > a').hover(function(){
		$(this).find('img').stop().animate({opacity:0.8},400);
		$(this).stop().animate({borderColor:'#d60004'},400);
	}, function(){
		$(this).find('img').stop().animate({opacity:1},400);
		$(this).stop().animate({borderColor:'#3f3f3f'},400);
	});	
	
	///// close	
	$('.close').find('span').css({opacity:0});
	$('.close').hover(function(){
		$(this).find('span').stop().animate({opacity:1},400);							 
	}, function(){
		$(this).find('span').stop().animate({opacity:0},400);	
	});
	
	///////// gallery	
	$('.photo1').find('span').css({opacity:0});	
	$('.photo1 > a').hover(function(){
		$(this).find('img').stop().animate({borderColor:'#d60004'},400);							
		$(this).find('span').stop().animate({opacity:0.5},400);								
	}, function(){
		$(this).find('img').stop().animate({borderColor:'#3f3f3f'},400);
		$(this).find('span').stop().animate({opacity:0},400);								
	});	
	
	///////// video	
	$('.video1').find('span').css({opacity:0});	
	$('.video1 > a').hover(function(){
		$(this).find('img').stop().animate({borderColor:'#d60004'},400);							
		$(this).find('span').stop().animate({opacity:0.5},400);								
	}, function(){
		$(this).find('img').stop().animate({borderColor:'#3f3f3f'},400);
		$(this).find('span').stop().animate({opacity:0},400);								
	});	
	
	
	
	

	
	
	
	
	
	
	// for lightbox
	 $("a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'normal',theme:'dark_square',social_tools:false,allow_resize: true,default_width: 500,default_height: 344});
		
 });  ////////




$(window).load(function() {	
						
	// scroll
	$('.scroll-pane').jScrollPane({
		showArrows: true,
		verticalGutter: 15,
		verticalDragMinHeight: 83,
		verticalDragMaxHeight: 83
	});	
	
	
	//content switch	
	$('#content>ul>li').eq(0).css({'visibility':'hidden'});	
	var content = $('#content');	
	content.tabs({
        show:1,
        preFu:function(_){
    	   _.li.css({display:'none'});
		   $('.close').css({display:'none',opacity:0});
        },
        actFu:function(_){  
			var Delay=0;
			if(_.pren==0){Delay=1000;}
		
            if(_.curr){
                _.curr.css({display:'block', left:-2000}).stop().delay(Delay+600).animate({left:0},800, 'easeOutExpo');	                
                //changePages();
            }   
    		if(_.prev){
  		        _.prev.stop().delay(Delay).animate({left:2000},800, 'easeInExpo', function(){ _.prev.css({display:'none'}); });
            }			
			console.log(_.pren, _.n);			
            if ( (_.n == 0) && (_.pren != -1) ){
                showSplash();
				console.log('showSplash');
            }
            if ((_.pren == 0) && (_.n>0)){
                hideSplash(); 
				console.log('hideSplash');
            }
			/*if (_.pren == undefined){
                _.pren = -1;
                hideSplashQ();
            }*/
			if ( (_.pren == undefined) && (_.n >= 1) ){  //if at start loading subpage (_.n >= 0)
                _.pren = -1;
                hideSplashQ();
				console.log('hideSplashQ');
            }
  		}
    });
	//content switch navs
	var nav = $('.menu');	
    nav.navs({
		useHash:true,
        defHash: '#!/page_SPLASH',
        hoverIn:function(li){            
			$('> a b',li).stop().animate({opacity:1},400,'swing');
        },
        hoverOut:function(li){            
            $('> a b',li).stop().animate({opacity:0},400,'swing');            
        }
    })    
    .navs(function(n){	
   	    content.tabs(n);
   	});	
	//////////////////////////
	
	var h_cont=728;
	function centre() {
		var h=$(document).height()-0;
		if (h>h_cont) {
			m_top=~~(h-h_cont)/2+0;
		} else {
			m_top=0;
		}
		$('.main1').stop().css({paddingTop:m_top});
		$('.bg1').stop().css({height:$('.extra').height()});
	}
	//centre(0);
	setInterval(centre,1);
	//$(window).resize(function(){ centre(400); } 	);

	
	
	
}); /// load

////////////////

$(window).load(function() {	
	setTimeout(function () {					
  		$('.spinner').fadeOut();
		$('body').css({overflow:'inherit'});

	}, 0);	
	var qwe = setTimeout(function () {$("#jquery_jplayer").jPlayer("play");}, 2000);


	
	
});