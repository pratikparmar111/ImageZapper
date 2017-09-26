<%@ page contentType="text/html; charset=iso-8859-1" language="java" session="true" import="java.sql.*" errorPage=""%>
<html>
    <head>
        <title>Selfie</title>
        <script src="js/jquery-1.4.2.js"></script>
        <script src="js/jquery.min.js"></script>

        <script>
            var st;
            var x;
            // Put event listeners into place
            window.addEventListener("DOMContentLoaded", function() {
                // Grab elements, create settings, etc.
                var canvas = document.getElementById("canvas"),
                        context = canvas.getContext("2d"),
                        video = document.getElementById("video"),
                        videoObj = {"video": true},
                errBack = function(error) {
                    console.log("Video capture error: ", error.code);
                };
                // Put video listeners into place
                if (navigator.getUserMedia) { // Standard
                    navigator.getUserMedia(videoObj, function(stream) {
                        video.src = stream;
                        video.play();
                        st = stream;
                    }, errBack);
                } else if (navigator.webkitGetUserMedia) { // WebKit-prefixed
                    navigator.webkitGetUserMedia(videoObj, function(stream) {
                        video.src = window.webkitURL.createObjectURL(stream);
                        video.play();
                        st = stream;
                    }, errBack);
                } else if (navigator.mozGetUserMedia) { // WebKit-prefixed
                    navigator.mozGetUserMedia(videoObj, function(stream) {
                        video.src = window.URL.createObjectURL(stream);
                        video.play();
                        st = stream;
                    }, errBack);
                }
                // getvideo();
                // Trigger photo take
                document.getElementById("snap").addEventListener("click", function() {
                    context.drawImage(video, 0, 0, 640, 480);
                    // Littel effects
                    $('#video').fadeOut('slow');
                    $('#canvas').fadeIn('slow');
                    $('#snap').hide();
                    $('#new').show();
                    $('#upload').show();
                    $('#effect').hide();
                    $('#crop').hide();
                    $('#compression').hide();
                    st.stop();
                    video.src = null;
                    // Allso show upload button
                    //$('#upload').show();
                });
                // Capture New Photo
                document.getElementById("new").addEventListener("click", function() {
                    $('#video').fadeIn('slow');
                    $('#canvas').fadeOut('slow');
                    $('#snap').show();
                    $('#new').hide();
                    $('#upload').hide();
                    $('#effect').hide();
                    $('#crop').hide();
                    $('#compression').hide();
                    // st.play();
                    if (navigator.getUserMedia) { // Standard
                        navigator.getUserMedia(videoObj, function(stream) {
                            video.src = stream;
                            video.play();
                            st = stream;
                        }, errBack);
                    } else if (navigator.webkitGetUserMedia) { // WebKit-prefixed
                        navigator.webkitGetUserMedia(videoObj, function(stream) {
                            video.src = window.webkitURL.createObjectURL(stream);
                            video.play();
                            st = stream;
                        }, errBack);
                    } else if (navigator.mozGetUserMedia) { // WebKit-prefixed
                        navigator.mozGetUserMedia(videoObj, function(stream) {
                            video.src = window.URL.createObjectURL(stream);
                            video.play();
                            st = stream;
                        }, errBack);
                    }
                });
                // Upload image to sever 
                document.getElementById("upload").addEventListener("click", function() {
                    $('#upload').hide();
                    $('#effect').show();
                    $('#crop').show();
                    $('#compression').show();
                    var dataUrl = canvas.toDataURL();


                    x = new XMLHttpRequest();
                    // x.onreadystatechange=getdata;
                    x.open("POST", "selfysave.jsp", true);
                    x.send(dataUrl);

//                    alert('${sessionScope.photo}');
                    // window.location='fileup.jsp';

                    /*$.ajax({
                     type: 'POST',
                     url: "selfysave.jsp",
                     data: {
                     imgBase64: dataUrl
                     
                     }
                     }).done(function(msg) {
                     console.log('saved');
                     
                     });*/
                });
            }, false);


            function getdata()
            {
                if (x.readyState == 4 || x.status == 200)
                {
                    alert(x.responseText);
                }
            }
        </script>
        <script  type="text/javascript">

            function effect()
            {
                window.location = "effect.jsp";
            }
            function crop()
            {
                window.location = "crop.jsp";
            }
            function compression()
            {
                window.location = "compression.jsp";
            }
        </script>
    </head>


    <body>

        <div>
            <video  id="video" autoplay></video>

        </div>
        <button id="snap">Capture</button>
        <div>
            <canvas id="canvas" width="640" height="480" hidden></canvas>

        </div>

        <button id="upload" hidden>Upload</button>
        <button id="new" hidden>New</button>
<!--        <input type="button" value="Effect" id="effect" hidden onclick='effect()'/>
        <button id="crop" hidden onclick="crop()">Crop</button>
        <button id="compression" hidden onclick="compression()" >Compression</button>-->
    </body>
</html>
