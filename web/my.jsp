<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <script type="text/javascript" src="jquerymin.js"></script>
    <script type="text/javascript" src="jcrop.js"></script>
    
    <title>Crop and save</title>
  </head>
  <body>
    <img src="1a2.jpg" id="cropbox"/>
    <script type="text/javascript">
      $(window).load(function(){
        var jcrop_api;
        initJcrop();
        function initJcrop()
        {
          jcrop_api = $.Jcrop('#cropbox',{ onChange: setCoords, onSelect: setCoords });
          jcrop_api.setSelect([100,100,300,300]);
          jcrop_api.setOptions({ allowSelect: true, allowMove: true, allowResize: true, aspectRatio: 1 });
        }
      });
      function setCoords(c)
      {
        jQuery('#x1').val(c.x);
        jQuery('#y1').val(c.y);
        jQuery('#x2').val(c.x2);
        jQuery('#y2').val(c.y2);
        jQuery('#w').val(c.w);
        jQuery('#h').val(c.h);
       };
     </script>
     <form action="/cmint/cropper">
     <input type="hidden" name="file" value="HC2.jpg" />
     <input type="hidden" name="x1" id="x1"/>
     <input type="hidden" name="y1" id="y1"/>
     <input type="hidden" name="x2" id="x2"/>
     <input type="hidden" name="y2" id="y2"/>
     <input type="hidden" name="w" id="w"/>
     <input type="hidden" name="h" id="h"/>
     <input type="submit" value="Crop" name="action" />
   </form>
  </body>
</html>