<%@ page contentType="text/html; charset=iso-8859-1" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">

    <head>
        <title>Image zapper index</title>
        <meta charset="utf-8">

            <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
                <script type="text/javascript" src="js/main.js"></script>

                <!--[if lt IE 8]>
                                <div style=' clear: both; text-align:center; position: relative;z-index:100;'>
                                        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a>
                                </div>
                        <![endif]-->
                <script>

                    function loadifrm(ifrm, src) {
                        document.getElementById(ifrm).src = src;
                        if(ifrm!='frm_selfie')
                        document.getElementById("frm_selfie").src = "blank.html";
                    }
                </script>
                </head>
                <body>
                    <div class="spinner"></div>

                    <div class="bg1"></div>

                    <div class="extra">
                        <div class="main1">
                            <div class="main2">

                                <header>
                                    <a href="index-2.html" class="logo">
                                        <img src="images/logo.png">
                                            <div class="txt1">Image<span>Zapper</span></div>
                                            <div class="txt2">Give effect to any image you want</div>
                                    </a>
                                </header>

                                <nav class="menu">
                                    <ul id="menu">
                                        <li class="nav1"><a href="#!/page_HOME" onclick="loadifrm('frm_login', 'login.jsp');"><b></b><span>home page<br>start here</span></a></li>
                                        <li class="nav2"><a href="#!/page_UPLOAD" onclick="loadifrm('frm_upload', 'first.jsp');"><b></b><span>Upload<br>Image</span></a></li>
                                        <li class="nav3"><a href="#!/page_EFFECT" onclick="loadifrm('frm_effect', 'effect.jsp');"><b></b><span>Effect</span></a></li>
                                        <li class="nav4"><a href="#!/page_CROP"  onclick="loadifrm('frm_crop', 'crop.jsp');"><b></b><span>Crop</span></a></li>
                                        <li class="nav5"><a href="#!/page_COMPRESSION"  onclick="loadifrm('frm_compress', 'compression.jsp');"><b></b><span>Compression</span></a></li>
                                        <li class="nav6"><a href="#!/page_SELFIE"  onclick="loadifrm('frm_selfie', 'selfie.jsp');"><b></b><span>SELFIE</span></a></li>   
                                        <li class="nav7"><a href="#!/page_GALLERY" onclick="loadifrm('frm_gallery', 'gallerycat.jsp');"><b></b><span>photo<br>gallery</span></a></li>
                                        
                                    </ul>
                                </nav>

                                <div class="splash">

                                    <div class="splash1 nav1">
                                        <div class="splash_1"><a href="images/splash01_big.jpg" rel="prettyPhoto[splash]" title="Photo Title"><img src="images/splash01.jpg"></a></div>
                                    </div>

                                    <div class="splash2 nav2">
                                        <div class="splash_2"><a href="images/splash02_big.jpg" rel="prettyPhoto[splash]" title="Photo Title"><img src="images/splash02.jpg"></a></div>
                                    </div>

                                    <div class="splash1 nav3">
                                        <div class="splash_1"><a href="images/splash03_big.jpg" rel="prettyPhoto[splash]" title="Photo Title"><img src="images/splash03.jpg"></a></div>
                                    </div>

                                    <div class="splash1 nav4">
                                        <div class="splash_1"><a href="images/splash04_big.jpg" rel="prettyPhoto[splash]" title="Photo Title"><img src="images/splash04.jpg"></a></div>
                                    </div>

                                    <div class="splash2 nav5">
                                        <div class="splash_2"><a href="images/splash05_big.jpg" rel="prettyPhoto[splash]" title="Photo Title"><img src="images/splash05.jpg"></a></div>
                                    </div>

                                    <div class="splash1 nav6">
                                        <div class="splash_1"><a href="images/splash06_big.jpg" rel="prettyPhoto[splash]" title="Photo Title"><img src="images/splash06.jpg"></a></div>
                                    </div>

                                </div>

                                <a href="#!/page_SPLASH" class="close"><span></span></a>

                                <!--content -->
                                <article id="content">
                                    <ul>

                                        <li id="page_SPLASH"></li>

                                        <li id="page_HOME">
                                            <div class="box">

                                                <div class="col1">

                                                    <h2>Welcome to our site!</h2>
                                                    <div class="h3">
                                                        Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod
                                                        tempor incididunt ut labore et dolore magna.
                                                    </div>

                                                    <div class="im1 left img1"><img src="images/home01.jpg" class="border1"></div>                                
                                                    <div class="table w1">                                
                                                        <strong class="h4">
                                                            Nunc suscipit. 
                                                        </strong>
                                                        <p class="text">
                                                            Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. 
                                                        </p>
                                                        <a href="#!/page_MORE" class="button1">read more</a>                                 
                                                    </div>                                

                                                    <div class="clear"></div>
                                                    <br>

                                                        <div class="im1 left img1"><img src="images/home02.jpg" class="border1"></div>                                
                                                        <div class="table w1">                                
                                                            <strong class="h4">
                                                                Nunc suscipit. 
                                                            </strong>
                                                            <p class="text">
                                                                Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. 
                                                            </p>
                                                            <a href="#!/page_MORE" class="button1">read more</a>                                 
                                                        </div>                                

                                                        <div class="clear"></div>


                                                </div>
                                                <div class="col2 pad_left3">

                                                    <h2>Login</h2>
                                                    <div class=" scroll-pane">

                                                        <iframe id="frm_login" src="login.jsp" width="100%" height="340px"></iframe>



                                                    </div>


                                                </div>
                                                <div class="clear"></div>

                                            </div>
                                        </li>

                                        <li id="page_CROP">
                                            <div class="box">
                                                <h2>Crop</h2>

                                                <div class="scroll-pane">
                                                    <iframe id="frm_crop" src="blank.html" width="100%" height="340px"></iframe>
                                                </div>

                                                <!--                  		<div class="col2">
                                                                        
                                                                                        <h2>testimonials</h2>
                                                                                <div class=" scroll-pane">
                                                                                
                                                                                                <strong class="h4">
                                                                                                Nunc suscipiget me 
                                                                                                </strong>	
                                                                                        <p class="text">
                                                                                        Her uspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer mas
                                                                                        </p>
                                                                                        
                                                                                        <br>
                                                                                        
                                                                                        <strong class="h4">
                                                                                                Deer consequat massa eget metus
                                                                                                </strong>	
                                                                                        <p class="text">
                                                                                        Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. 
                                                                                        </p>
                                                                                        
                                                                                        <br>
                                                                                        
                                                                                        <strong class="h4">
                                                                                                Sed consequat massa etus 
                                                                                                </strong>	
                                                                                        <p class="text">
                                                                                        Auspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risusuis pulvinar. Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer mas.Auspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risusuis pulvinar. Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer mas.Auspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risusuis pulvinar. Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer mas.
                                                                                        </p>
                                                                                        
                                                                                                
                                                                                        
                                                                                        
                                                                                
                                                                                </div>
                                                                                
                                                                        
                                                                        </div>
                                                                        <div class="col1 pad_left3">
                                                                        
                                                                                        <h2>About Our Company</h2>
                                                                                
                                                                                <div class="im2 left img1 img2"><img src="images/about01.jpg" class="border1"></div> 
                                                                                <div class="im2 left img2"><img src="images/about02.jpg" class="border1"></div>                               
                                                                                
                                                                                <div class="clear"></div>
                                                                                
                                                                                <span class="h3">
                                                                                Det conse ctetur adipisicing elit, sed do eiusmod sorem ipsum dolor sit ame
                                                tempor incididunt ut labore et dolore magna.
                                                                                </span>
                                                                                <p class="text">
                                                                                Suspendisse enim arcu, convallis non, cursus sed, digni ssim et, est.  Aen ean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinarales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, eratroin pede eros
                                                                                </p>
                                                                                <a href="#!/page_MORE" class="button1">read more</a> 
                                                                                
                                                                                
                                                                                
                                                                        
                                                                        </div>                        
                                                                                <div class="clear"></div>-->

                                            </div>
                                        </li>

                                        <li id="page_UPLOAD">
                                            <div class="box">

                                                <h2>Upload Image</h2>

                                                <div class="scroll-pane">
                                                    <iframe id="frm_upload" src="blank.html" width="100%" height="340px"></iframe>
                                                    <!--		                        <div class="im3 left img1"><img src="images/interior01.jpg" class="border1"></div>                                
                                                                                            <div class="table w2">                                
                                                                                            <strong class="h4">
                                                                                            Lorem ispum dolor unc suscipiget me  
                                                                                            </strong>
                                                                                            <p class="text">
                                                                                            Her uspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris. 
                                                                                            </p>
                                                                                            <a href="#!/page_MORE" class="button1">read more</a>                                 
                                                                                            </div>                                
                                                                                            
                                                                                            <div class="clear"></div>
                                                                                            <br>
                                                                                    
                                                                                    <div class="im3 left img1"><img src="images/interior02.jpg" class="border1"></div>                                
                                                                                            <div class="table w2">                                
                                                                                            <strong class="h4">
                                                                                            Lorem ispum dolor unc suscipiget me  
                                                                                            </strong>
                                                                                            <p class="text">
                                                                                            Her uspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris. 
                                                                                            </p>
                                                                                            <a href="#!/page_MORE" class="button1">read more</a>                                 
                                                                                            </div>                                
                                                                                            
                                                                                            <div class="clear"></div>
                                                                                            <br>
                                                                                    
                                                                                    <div class="im3 left img1"><img src="images/interior03.jpg" class="border1"></div>                                
                                                                                            <div class="table w2">                                
                                                                                            <strong class="h4">
                                                                                            Lorem ispum dolor unc suscipiget me  
                                                                                            </strong>
                                                                                            <p class="text">
                                                                                            Her uspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris. 
                                                                                            </p>
                                                                                            <a href="#!/page_MORE" class="button1">read more</a>                                 
                                                                                            </div>                                
                                                                                            
                                                                                            <div class="clear"></div>
                                                                                            <br>
                                                                                    
                                                                                    <div class="im3 left img1"><img src="images/interior04.jpg" class="border1"></div>                                
                                                                                            <div class="table w2">                                
                                                                                            <strong class="h4">
                                                                                            Lorem ispum dolor unc suscipiget me  
                                                                                            </strong>
                                                                                            <p class="text">
                                                                                            Her uspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris. 
                                                                                            </p>
                                                                                            <a href="#!/page_MORE" class="button1">read more</a>                                 
                                                                                            </div>                                
                                                                                            
                                                                                            <div class="clear"></div>-->


                                                </div>



                                            </div>
                                        </li>

                                        <li id="page_EFFECT">
                                            <div class="box">
                                                <h2>Upload Image</h2>

                                                <div class="scroll-pane">
                                                    <iframe id="frm_effect" src="blank.html" width="100%" height="340px"></iframe>
                                                </div>

                                                <!--                  		<div class="col3">
                                                                        
                                                                                        <h2>IFurniture Design</h2>
                                                                                
                                                                                <div class="im3 left img1"><img src="images/furniture01.jpg" class="border1"></div>                                
                                                                                        <div class="table w3">                                
                                                                                        <strong class="h4">
                                                                                        Sorem ispum dolor unc suscipiget me 
                                                                                        </strong>
                                                                                        <p class="text">
                                                                                        Wer uspendisse enim arcu, convallis non, cursus sed, digniss im et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. Vestibulum vel pe de at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula.
                                                                                        </p>
                                                                                        <a href="#!/page_MORE" class="button1">read more</a>                                 
                                                                                        </div>                                
                                                                                        
                                                                                        <div class="clear"></div>
                                                                                        <br>
                                                                                
                                                                                <div class="im3 left img1"><img src="images/furniture02.jpg" class="border1"></div>                                
                                                                                        <div class="table w3">                                
                                                                                        <strong class="h4">
                                                                                        Sorem ispum dolor unc suscipiget me 
                                                                                        </strong>
                                                                                        <p class="text">
                                                                                        Wer uspendisse enim arcu, convallis non, cursus sed, digniss im et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. Vestibulum vel pe de at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula.
                                                                                        </p>
                                                                                        <a href="#!/page_MORE" class="button1">read more</a>                                 
                                                                                        </div>                                
                                                                                        
                                                                                        <div class="clear"></div>
                                                                                        
                                                                                
                                                                                
                                                                        
                                                                        </div>
                                                                                <div class="col4 pad_left3">
                                                                        
                                                                                        <h2>categories</h2>
                                                                                <div class=" scroll-pane">
                                                                                
                                                                                                
                                                                                        <ul class="ul1">
                                                                                                      <li><a href="#"><strong>Suspendisse enim arcu, convallis non </strong></a></li>
                                                                                                      <li><a href="#"><strong>Aen ean semper aliquet libero. In ante</strong></a></li>
                                                                                                      <li><a href="#"><strong>Deelit, cursus ut, ultrices vitae, tempor</strong></a></li>
                                                                                                      <li><a href="#"><strong>Suspendisse enim arcu, convallis non </strong></a></li>
                                                                                                      <li><a href="#"><strong>Aen ean semper aliquet libero. In ante</strong></a></li>
                                                                                                      <li><a href="#"><strong>Deelit, cursus ut, ultrices vitae, tempor</strong></a></li>
                                                                                                      <li><a href="#"><strong>Suspendisse enim arcu, convallis non </strong></a></li>
                                                                                                      <li><a href="#"><strong>Aen ean semper aliquet libero. In ante</strong></a></li>
                                                                                                      <li><a href="#"><strong>Deelit, cursus ut, ultrices vitae, tempor</strong></a></li>
                                                                                                      <li><a href="#"><strong>Suspendisse enim arcu, convallis non </strong></a></li>
                                                                                                      <li><a href="#"><strong>Aen ean semper aliquet libero. In ante</strong></a></li>
                                                                                                      <li><a href="#"><strong>Deelit, cursus ut, ultrices vitae, tempor</strong></a></li>
                                                                                                      <li><a href="#"><strong>Suspendisse enim arcu, convallis non </strong></a></li>
                                                                                                      <li><a href="#"><strong>Aen ean semper aliquet libero. In ante</strong></a></li>
                                                                                                      <li><a href="#"><strong>Deelit, cursus ut, ultrices vitae, tempor</strong></a></li>
                                                                                                      <li><a href="#"><strong>Suspendisse enim arcu, convallis non </strong></a></li>
                                                                                                      <li><a href="#"><strong>Aen ean semper aliquet libero. In ante</strong></a></li>
                                                                                                      <li><a href="#"><strong>Deelit, cursus ut, ultrices vitae, tempor</strong></a></li>
                                                                                                      <li><a href="#"><strong>Suspendisse enim arcu, convallis non </strong></a></li>
                                                                                                      <li><a href="#"><strong>Aen ean semper aliquet libero. In ante</strong></a></li>
                                                                                                      <li><a href="#"><strong>Deelit, cursus ut, ultrices vitae, tempor</strong></a></li>
                                                
                                                                                                                                            
                                                                                                </ul>
                                                                                        
                                                                                        
                                                                                
                                                                                </div>
                                                                                
                                                                        
                                                                        </div>
                                                                                <div class="clear"></div>-->

                                            </div>
                                        </li>

                                        <li id="page_GALLERY">
                                            <div class="box">

                                                <h2>Photo Gallery</h2>

                                                <div class="scroll-pane">
                                                    <iframe id="frm_gallery" src="blank.html" scrolling="auto" width="100%" height="340px"></iframe>
                                                    <!--                        		<div class="gal1">
                                                                                                    <div class="photo1"><a href="images/gallery01_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery01.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="gal1">
                                                                                                    <div class="photo1"><a href="images/gallery02_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery02.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="gal1">
                                                                                                    <div class="photo1"><a href="images/gallery03_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery03.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="gal1 last">
                                                                                                    <div class="photo1"><a href="images/gallery04_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery04.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="clear"></div>
                                                                                    
                                                                                    <div class="gal1">
                                                                                                    <div class="photo1"><a href="images/gallery05_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery05.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="gal1">
                                                                                                    <div class="photo1"><a href="images/gallery06_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery06.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="gal1">
                                                                                                    <div class="photo1"><a href="images/gallery07_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery07.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="gal1 last">
                                                                                                    <div class="photo1"><a href="images/gallery08_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery08.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="clear"></div>
                                                                                    
                                                                                    <div class="gal1">
                                                                                                    <div class="photo1"><a href="images/gallery09_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery09.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="gal1">
                                                                                                    <div class="photo1"><a href="images/gallery10_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery10.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="gal1">
                                                                                                    <div class="photo1"><a href="images/gallery11_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery11.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="gal1 last">
                                                                                                    <div class="photo1"><a href="images/gallery12_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery12.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="clear"></div>
                                                                                    
                                                                                    <div class="gal1">
                                                                                                    <div class="photo1"><a href="images/gallery13_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery13.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="gal1">
                                                                                                    <div class="photo1"><a href="images/gallery14_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery14.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="gal1">
                                                                                                    <div class="photo1"><a href="images/gallery15_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery15.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="gal1 last">
                                                                                                    <div class="photo1"><a href="images/gallery16_big.jpg" rel="prettyPhoto[pp_gal1]" title="Photo Title"><img src="images/gallery16.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="clear"></div>-->





                                                </div>



                                            </div>
                                        </li>

                                        <li id="page_COMPRESSION">
                                            <div class="box">

                                                <h2>Compression</h2>

                                                <div class="scroll-pane">
                                                    <iframe id="frm_compress" src="blank.html" scrolling="auto" width="100%" height="340px"></iframe>
                                                    <!--                        		<div class="vid1">
                                                                                                    <div class="video1"><a href="http://www.youtube.com/watch?v=kh29_SERH0Y?rel=0" rel="prettyPhoto[mixed]" title="YouTube Demo"><img src="images/video01.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="vid1">
                                                                                                    <div class="video1"><a href="http://www.youtube.com/watch?v=kh29_SERH0Y?rel=0" rel="prettyPhoto[mixed]" title="YouTube Demo"><img src="images/video02.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="vid1 last">
                                                                                                    <div class="video1"><a href="http://www.youtube.com/watch?v=kh29_SERH0Y?rel=0" rel="prettyPhoto[mixed]" title="YouTube Demo"><img src="images/video03.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="clear"></div>
                                                                                    
                                                                                    <div class="vid1">
                                                                                                    <div class="video1"><a href="http://www.youtube.com/watch?v=kh29_SERH0Y?rel=0" rel="prettyPhoto[mixed]" title="YouTube Demo"><img src="images/video04.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="vid1">
                                                                                                    <div class="video1"><a href="http://www.youtube.com/watch?v=kh29_SERH0Y?rel=0" rel="prettyPhoto[mixed]" title="YouTube Demo"><img src="images/video05.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="vid1 last">
                                                                                                    <div class="video1"><a href="http://www.youtube.com/watch?v=kh29_SERH0Y?rel=0" rel="prettyPhoto[mixed]" title="YouTube Demo"><img src="images/video06.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="clear"></div>
                                                                                    
                                                                                    <div class="vid1">
                                                                                                    <div class="video1"><a href="http://www.youtube.com/watch?v=kh29_SERH0Y?rel=0" rel="prettyPhoto[mixed]" title="YouTube Demo"><img src="images/video07.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="vid1">
                                                                                                    <div class="video1"><a href="http://www.youtube.com/watch?v=kh29_SERH0Y?rel=0" rel="prettyPhoto[mixed]" title="YouTube Demo"><img src="images/video08.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="vid1 last">
                                                                                                    <div class="video1"><a href="http://www.youtube.com/watch?v=kh29_SERH0Y?rel=0" rel="prettyPhoto[mixed]" title="YouTube Demo"><img src="images/video09.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="clear"></div>
                                                                                    
                                                                                    <div class="vid1">
                                                                                                    <div class="video1"><a href="http://www.youtube.com/watch?v=kh29_SERH0Y?rel=0" rel="prettyPhoto[mixed]" title="YouTube Demo"><img src="images/video10.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="vid1">
                                                                                                    <div class="video1"><a href="http://www.youtube.com/watch?v=kh29_SERH0Y?rel=0" rel="prettyPhoto[mixed]" title="YouTube Demo"><img src="images/video11.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="vid1 last">
                                                                                                    <div class="video1"><a href="http://www.youtube.com/watch?v=kh29_SERH0Y?rel=0" rel="prettyPhoto[mixed]" title="YouTube Demo"><img src="images/video12.jpg" class="border1"><span></span></a></div>
                                                                                        <strong>Suspendisse enim arcu, convallis </strong>
                                                                                                            </div>
                                                                                    
                                                                                    <div class="clear"></div>-->







                                                </div>



                                            </div>
                                        </li>

                                        <li id="page_SELFIE">
                                            <div class="box">
                                                 <h2>Selfie</h2>

                                                <div class="scroll-pane">
                                                    <iframe id="frm_selfie" src="blank.html" scrolling="auto" width="100%" height="340px"></iframe>
                                                </div>

<!--                                                <div class="col5">

                                                    <h2>Our Location</h2>


                                                    <div class="im6 img2">

                                                        <figure class="google_map border1"></figure>

                                                    </div>                                

                                                    <strong class="h4">
                                                        The Companyname Inc.
                                                    </strong>
                                                    <p class="text">
                                                        8901 Marmora Road,<br>
                                                            Glasgow, D04 89GR.<br>
                                                                Telephone: +1 800 123 1234<br>
                                                                    E-mail: <a href="#">mail@copanyname.com</a>
                                                                    </p>                               




                                                                    </div>
                                                                    <div class="col6 pad_left3">

                                                                        <h2>Contact Form</h2>

                                                                        <div id="note">
                                                                        </div>
                                                                        <div id="fields">
                                                                            <form id="ajax-contact-form" action="javascript:alert('success!');">
                                                                                <div class="clear"></div>
                                                                                <label>Your full name:</label>
                                                                                <INPUT type="text" name="name" value="">
                                                                                    <div class="clear"></div>
                                                                                    <label >E-Mail:</label>
                                                                                    <INPUT type="text" name="email" value="">
                                                                                        <div class="clear"></div>
                                                                                        <label >Phone Number:</label>
                                                                                        <INPUT type="text" name="phone" value="">
                                                                                            <div class="clear"></div>
                                                                                            <label >Message:</label>
                                                                                            <TEXTAREA NAME="content"></TEXTAREA>
                                              <div class="clear"></div>
                                              <label>Captcha:</label>
                                              <img src="captcha/captcha.html">
                                              <INPUT class="capthca" type="text" name="capthca" value="">
                                              <div class="clear"></div>
                                              <INPUT class="submit" type="submit" name="submit" value="submit">
                                              </form>
                                          </div> 
                                
                                
                        
                        </div>
                  		<div class="clear"></div>-->
                  
                  </div>
                  </li>
                  
                  <li id="page_PRIVACY">
                  <div class="box">
                  
                  		<h2>Privacy Policy</h2>
                        
                        <div class="scroll-pane">
                        
                        		<strong>
                                Nunc suscipit. Suspendisse mattis turpis eget odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque tempus dictum urna. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. 
                                </strong>
                                <p class="text">
                                Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris. 
In pharetra ipsum condimentum elit. Suspendisse mattis turpis eget odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque tempus dictum urna. Sed consequat massa eget metus. Quisque mollis pretium nisl. Mauris venenatis porttitor risus. Phasellus accumsan turpis. Nam sagittis nulla quis orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec vitae elit. 
                                </p>
                                <p class="text">
                                Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris. 
In pharetra ipsum condimentum elit. Suspendisse mattis turpis eget odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque tempus dictum urna. Sed consequat massa eget metus. Quisque mollis pretium nisl. Mauris venenatis porttitor risus. Phasellus accumsan turpis. Nam sagittis nulla quis orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec vitae elit. 
                                </p>
                                <p class="text">
                                Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris. 
In pharetra ipsum condimentum elit. Suspendisse mattis turpis eget odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque tempus dictum urna. Sed consequat massa eget metus. Quisque mollis pretium nisl. Mauris venenatis porttitor risus. Phasellus accumsan turpis. Nam sagittis nulla quis orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec vitae elit. 
                                </p>
                                <p class="text">
                                Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris. 
In pharetra ipsum condimentum elit. Suspendisse mattis turpis eget odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque tempus dictum urna. Sed consequat massa eget metus. Quisque mollis pretium nisl. Mauris venenatis porttitor risus. Phasellus accumsan turpis. Nam sagittis nulla quis orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec vitae elit. 
                                </p>
                                
                                
                                
                                                              
		                        
		                        
                        
                        </div>
                  		
                  		
                  
                  </div>
                  </li>
                  
                  <li id="page_MORE">
                  <div class="box">
                  
                  		<h2>More</h2>
                        
                        <div class="scroll-pane">
                        
                        		<strong>
                                Nunc suscipit. Suspendisse mattis turpis eget odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque tempus dictum urna. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. 
                                </strong>
                                <p class="text">
                                Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris. 
In pharetra ipsum condimentum elit. Suspendisse mattis turpis eget odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque tempus dictum urna. Sed consequat massa eget metus. Quisque mollis pretium nisl. Mauris venenatis porttitor risus. Phasellus accumsan turpis. Nam sagittis nulla quis orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec vitae elit. 
                                </p>
                                <p class="text">
                                Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris. 
In pharetra ipsum condimentum elit. Suspendisse mattis turpis eget odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque tempus dictum urna. Sed consequat massa eget metus. Quisque mollis pretium nisl. Mauris venenatis porttitor risus. Phasellus accumsan turpis. Nam sagittis nulla quis orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec vitae elit. 
                                </p>
                                <p class="text">
                                Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris. 
In pharetra ipsum condimentum elit. Suspendisse mattis turpis eget odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque tempus dictum urna. Sed consequat massa eget metus. Quisque mollis pretium nisl. Mauris venenatis porttitor risus. Phasellus accumsan turpis. Nam sagittis nulla quis orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec vitae elit. 
                                </p>
                                <p class="text">
                                Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum. Vestibulum pede. Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris. 
In pharetra ipsum condimentum elit. Suspendisse mattis turpis eget odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque tempus dictum urna. Sed consequat massa eget metus. Quisque mollis pretium nisl. Mauris venenatis porttitor risus. Phasellus accumsan turpis. Nam sagittis nulla quis orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec vitae elit. 
                                </p>
                                
                                
                                
                                                              
		                        
		                        
                        
                        </div>
                  		
                  		
                  
                  </div>
                  </li>
                  
                  
                </ul>
            </article>
<!--content end -->


</div>
</div>
<div class="block"></div>
</div>

<footer>

<div class="copyright">Copyright &copy; 2012. All rights reserved<br><a href="#!/page_PRIVACY">Privacy policy</a></div>

<ul class="icons">
    <li><a href="#"><img src="images/social_ic1.png"></a></li>
    <li><a href="#"><img src="images/social_ic2.png"></a></li>
    <li><a href="#"><img src="images/social_ic3.png"></a></li>
    <li><a href="#"><img src="images/social_ic4.png"></a></li>

</ul>

<div class="tola">
                  
                  <div id="jquery_jplayer" class="jp-jplayer"></div>

		<!-- Using the cssSelectorAncestor option with the default cssSelector class names to enable control association of standard functions using built in features -->

		<div id="jp_container" class="jp-audio">
        	<ul class="jp-controls">
            
						<li><a href="javascript:;" class="jp-mute" tabindex="1" title="mute"></a></li>
						<li><a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute"></a></li>
						<li><a href="javascript:;" class="jp-volume-max" tabindex="1" title="max volume"></a></li>
			</ul>            
            <div class="jp-txt">SOUND CONTROL</div>            
            <div class="jp-volume-bar"><div class="jp-volume-bar-value"></div></div>
		</div>
</div>

</footer>




</body>

<!-- Mirrored from www.bootstrap-template.com/templates/HTML5/300111389/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Mar 2015 18:27:56 GMT -->
</html>
