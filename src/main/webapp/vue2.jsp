<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
</head>

<style type="text/css">
    .div{
        max-width:100%;
    }
    img{max-width:100%; }
    /*video{ max-width:100%; height:auto;}
    header ul li{ float:left; list-style:none; list-style-type:none; margin-right:10px;}
    header select{display:none;}
    @media (max-width:960px){
        header ul{ display:none;}
        header select{ display:inline-block;}
    }*/
</style>

<body>
    <img src="Test_maven/view/upload/1.jpg">
    <img src="Test_maven/view/upload/1.jpg">
    <div class="row visible-on div">
        <div class="col-xs-6 col-sm-3" style="background-color: #dedef8;
											  box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <span class="hidden-xs">特别小型</span>
            <span class="visible-xs">✔ 在特别小型设备上可见</span>
        </div>
        <div class="col-xs-6 col-sm-3" style="background-color: #dedef8;
											  box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <span class="hidden-sm">小型</span>
            <span class="visible-sm">✔ 在小型设备上可见</span>
        </div>
        <div class="clearfix visible-xs"></div>
        <div class="col-xs-6 col-sm-3" style="background-color: #dedef8;
											  box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <span class="hidden-md">中型</span>
            <span class="visible-md">✔ 在中型设备上可见</span>
        </div>
        <div class="col-xs-6 col-sm-3" style="background-color: #dedef8;
											  box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <span class="hidden-lg">大型</span>
            <span class="visible-lg">✔ 在大型设备上可见</span>
        </div>
    </div>

</body>
</html>