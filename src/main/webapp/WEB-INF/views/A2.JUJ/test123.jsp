<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
    <head>
        <style type="text/css">#colorful {  height: 30em; width: 30em; padding: 1em; }</style>
    </head>
    <body>
        <div id="colorful">This element will have the colorful background.</div>
        <script src="https://raw.githubusercontent.com/webcore-it/colorful-background-css-generator/master/dist/colorful-background-css-generator.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            // The Generator
            var generator = new ColorfulBackgroundGenerator();

            // This adds 5 layers to the generator
            // The parameters are: degree[0-360], 
            //                      hue[0-360], saturation[0-100], lightness[0-100], 
            //                      positionColor[0-100], positionTransparency[0-100]
            // The lowest layer (at the bottom) in the css is the first added layer.
            generator.addLayer(new ColorfulBackgroundLayer(325, 5, 95, 55, 100)); // bottom layer
            generator.addLayer(new ColorfulBackgroundLayer(245, 75, 90, 70, 30, 80));
            generator.addLayer(new ColorfulBackgroundLayer(155, 150, 95, 70, 10, 80));
            generator.addLayer(new ColorfulBackgroundLayer(55, 230, 95, 65, 0, 70));
            generator.addLayer(new ColorfulBackgroundLayer(20, 300, 90, 65, 0, 55)); // top layer

            // Assign generated style to the element identified by it's id
            generator.assignStyleToElementId("colorful");
        </script>
    </body>
</html> 