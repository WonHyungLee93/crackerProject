<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#productListForm {
	border: 1px solid red;
}

.productListLi {
	border: 1px solid blue;
    width: 30%;
    height: 450px;
    margin: 20px 10px;
    display: inline-block;
}

.productListTop {
	margin: 30px 90px 30px 110px;
}


</style>
</head>
<body>
<form>
	<div class="productListTop">
		<img src="/index/image/shopmain/shopmealkit1.png" style="width:1200px; height:200px;">
	</div>
	<div id="productListForm">
	<input type="hidden" id="productCategory"value="${category}">
		
	</div>
</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../js/product/productBoardList.js"></script>

</body>
</html>