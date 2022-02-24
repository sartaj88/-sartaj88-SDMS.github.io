<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GMaps.aspx.cs" Inherits="GoogleMaps.GMaps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!DOCTYPE link href="https://maps/documentation/javascript/examples/default.css" rel="stylesheet" />
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false" type="text/javascript"></script>
    <script>  
        var mapcode;
        var diag;
        function initialize() {
            mapcode = new google.maps.Geocoder();
            var myLatlng = new google.maps.LatLng(-34.397, 150.644)
            var mapOptions = {
                zoom: 8,
                center: myLatlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
                //,marker: true
            };
            var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
        }
        google.maps.event.addDomListener(window, 'load', initialize);
        //var mapcode;
        //var diag;
        //function initialize() {
        //    mapcode = new google.maps.Geocoder();
        //    var lnt = new google.maps.LatLng(-34.397, 150.644);
        //    var diagChoice = {
        //        zoom: 8,
        //        center: lnt,
        //        diagId: google.maps.MapTypeId.ROADMAP
        //    }
        //    diag = new google.maps.Map(document.getElementById('map_populate'), diagChoice);
        //}

        //google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="map_canvas" style="width: 50%; height: 500px; border: 5px solid #5E5454;">
        </div>
    </form>
</body>
</html>
