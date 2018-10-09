<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- <script src="http://code.jquery.com/jquery-latest.js"></script>
	 --><!-- <script type="text/javascript" src="/SSM_Maven4/src/main/webapp/WEB-INF/js/jquery-3.1.1.js"></script> -->
  	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/vue.js"></script>

  </head>
  
  <body>
  		<!-- 按钮触发模态框 -->
  	<center>
		<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">添加商品</button>
  	</center>
  <!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h2 class="modal-title" id="myModalLabel" style="text-align: center;">添加商品</h2>
            </div>
            <div class="modal-body">
            	<form id="post" method="post" enctype="multipart/form-data">
	            	<table class="table table-striped">
			    		<thead>
				    		<tr>
				    			<th>商品名称</th>
				    			<td><input type="text" name="goodsname"></td>
				    		</tr>
				    		<tr>
								<th>商品类型</th>
								<td>
					   				<select name="goodstype.typeid" id="empName"  class="form-control .selected" style="width: 200px;">
 									</select>
							   	</td>
				    		</tr>
				    		<tr>
				    			<th>商品描述</th>
				    			<td><input type="text" name="goodsDesc"></td>
				    		</tr>
				    		<tr>
				    			<th>商品价格</th>
				    			<td>
				    				<input type="text" name="goodsUnitPrice">
				    			</td>
				    		</tr>
				    		<tr>
				    			<th>商品数量</th>
				    			<td>
				    				<input type="text" name="sellCount">
				    			</td>
				    		</tr>
				    		<tr>
				    			<th>商品生产日期</th>
				    			<td>
				    				<input type="text" name="goodsDate">
				    			</td>
				    		</tr>
				    		<tr>
				    			<th>商品图片</th>
				    			<td>
				    				<input type="file" name="file1" id="file">
				    			</td>
				    		</tr>
				    		<tr>
				    			<td colspan="2" style="text-align: center;">
				    				<img src="" id="img" width="90px" style='display: none;'>
				    			</td>
				    		</tr>
			    		</thead>
			    	</table>
		    	</form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="button" data-dismiss="modal">提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
  		<h1 style="text-align: center;">商品详情表
		<span>
  			<input type="text" id="name" name="name">
  			<button type="button" class="btn btn-default" id="cha">查找</button>
  		</span>
  		</h1>
		<div id="vue_tr">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>商品id</th>
						<th>商品名称</th>
						<th>商品类型</th>
						<th>商品描述</th>
						<th>商品价格</th>
						<th>商品图片路径</th>
						<th>商品数量</th>
						<th>商品生产日期</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="tr">
					<tr v-for="i in data">
						<td>{{i.goodsid}}</td>
						<td>{{i.goodsname}}</td>
						<td>{{i.goodstype.typename}}</td>
						<td>{{i.goodsDesc}}</td>
						<td>{{i.goodsUnitPrice}}</td>
						<td><img :src="i.goodsImageName" height='30px;' width='30px;'></td>
						<td>{{i.sellCount}}</td>
						<td>{{i.goodsDate}}</td>
						<td>
							<button v-on:click="greet(i.goodsid)">删除</button>
                            <button v-on:click="update(i.goodsid)">更改</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
  </body>
  <script type="text/javascript">
  	$(function(){
    	tbGoodsTypeSelect();
    	Add();
        vm.created();
    });

    var vm =  new Vue({
        el:'#vue_tr',
        data:{data:""},
        methods: {
            //商品查询
            created:function(){
                $.post('tbGoodsAction/tbGoodsSelect',function(data){
                    vm.data=data;
                })
            },
            //删除商品    删除按钮
            greet: function (event) {
                $.post('tbGoodsAction/tbGoodsDelete',{goodsid:event},function(data){
                    vm.created();
                })
            },
            //更改商品
            update: function (i) {
                alert(i);
               /* $.ajax({
                    type:"post",
                    data:{},
                    url: "",
                    dataType:"json",
                    success:function(data) {
                        vm.created();
                    }
                })*/
            }
        }
    });
    //商品类型查询
	function tbGoodsTypeSelect(){
		var url = "tbGoodsTypeAction/tbGoodsTypeSelect";
		$.ajax({
			url:url,
			data:{},
			dataType:"json",
			success:function(data){
				$("#empName").html("");
				 for(var i in data){
					$("#empName").prepend("<option value='"+data[i].typeid+"'>"+data[i].typename+"</option>");
				} 
			}	
		});
	 }
	 function Add(){
    	$("#button").click(function(){
    		var form = new FormData(document.getElementById("post"));
    		var url = "tbGoodsAction/tbGoodsAdd";
			$.ajax({
				url:url,
				type:"post",
                data:form,
                processData:false,
                contentType:false,
                success:function(data){
                    Select();
                }      
			});
    	});
	}
	 $("#file").change(function(){
	 	$("#img").show();
	 	var objUrl = getObjectURL(this.files[0]) ;//获取文件信息  		
	 	console.log("objUrl = "+objUrl);  		 
	 	if (objUrl) {  		 
	 	   $("#img").attr("src", objUrl); 
	 	}
	 });
	function getObjectURL(file) {  		 
		var url = null;   		 
		if (window.createObjectURL!=undefined) {  		  
			url = window.createObjectURL(file) ;  		 
		} else if (window.URL!=undefined) { 
		 // mozilla(firefox)  		 
			url = window.URL.createObjectURL(file) ;  		 
		} else if (window.webkitURL!=undefined) { // webkit or chrome  	
			url = window.webkitURL.createObjectURL(file) ;  	
		}  		 
			return url ;  		
		}
	</script>
</html>
