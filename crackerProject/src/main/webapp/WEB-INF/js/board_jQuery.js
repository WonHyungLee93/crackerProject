$('#boardWriteBtn').click(function(){
	var content = CKEDITOR.instances.content.getData();
	
	$('#subjectDiv').empty();
	$(content).empty();
	
	
	if($('#subject').val()==''){
		$('#subjectDiv').html('제목을 입력하세요');
		$('#subjectDiv').css('color','red');
		$('#subjectDiv').css('font-size','8pt');
		$('#subjectDiv').css('font-weight','bold');
	}else if(content == ''){
		$('#contentDiv').html('내용을 입력하세요');
		$('#contentDiv').css('color','red');
		$('#contentDiv').css('font-size','8pt');
		$('#contentDiv').css('font-weight','bold');
	}else{
		$.ajax({
			url:'/index/board/boardWrite',
			type:'post',
			data: {'subject' : $('#subject').val(),
					content},
			success:function(){
				alert('게시글을 등록하였습니다.');
				location.href='/index/board/boardList';
			},
			error:function(e){
				console.log(e);
			}
		});
	}
	
});


