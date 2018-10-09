<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/vue.js"></script>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
</head>

<style type="text/css">
    img{ max-width:100%;}
    video{ max-width:100%; height:auto;}
    header ul li{ float:left; list-style:none; list-style-type:none; margin-right:10px;}
    header select{display:none;}
    @media (max-width:960px){
        header ul{ display:none;}
        header select{ display:inline-block;}
    }
</style>

<body>
    <img src="Test_maven/upload/1.jpg">

</body>

<%--<body>
<div id="box">
    <div v-for="i in data">
        {{i.goodsid}}
        <button v-on:click="greet(i.goodsid)">Greet</button>
    </div>

</div>--%>
<%--<script type = "text/javascript">

    window.onload = function(){

        var vm = new Vue({
            el:'#box',
            data:{data:""},
            created:function(){
                alert("aa");
                var thos=this;
                $.post('tbGoodsAction/tbGoodsSelect',function(data){
                    thos.data=data;
                })
            },
            methods: {
                greet: function (event) {
                    // `this` 在方法里指当前 Vue 实例
                    alert("bb");
                    vm.created();

                }
            }
        });
    }
</script>&lt;%&ndash;
<div id="app">
    <ol>
        <li v-for="site in data">
            {{ site.goodsid }}
        </li>
    </ol>
    <input type="button" @click="post()" value="点我异步获取数据(Post)">
</div>
<script>
    new Vue({
        el: '#app',
        data: {},
        post:function() {
            this.$http.post("tbGoodsAction/tbGoodsSelect").then(function(data){
                alert(data);
                this.product = data.body;
            },function(response){
                alert(response);
            });
        }
    });
</script>&ndash;%&gt;

</body>--%>
</html>