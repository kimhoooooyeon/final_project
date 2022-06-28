$(document).ready(function(){
	$('input[name=menu_name]').hide();
	$('select[name=category_num]').hide();
	
	// 이거 동작안함 - 이유 모르겠음
	 $( function() {
	    $( "#order_datepicker1" ).datepicker({
	     	dataFormat: 'yymmdd',
	    	showOn: "button",
	     	buttonImageOnly: false,
	     	buttonText: "날짜선택"
	    });
	  } );
	  
	  
	  
	 // 상품명 / 카테고리 넘버 바뀌면 나타날 것
	$('select[name=product_search_type]').on('change',function(){
		alert('셀렉트바 값 변경');
		var product_search_type = $('select[name=product_search_type]').val();
		if(product_search_type == 'menu_name'){
			$('input[name=menu_name]').show();
			$('select[name=category_num]').hide();	
		}
		if(product_search_type == 'category_num'){
			$('input[name=menu_name]').hide();
			$('select[name=category_num]').show();
			
		}
	});
	
	// 상단 체크버튼 클릭시 전체클릭 or 천체해제
	$('input[name=allChk]').on('change',function(){
		$('input[name=check]').prop('checked',this.checked);
	});
	
	// 수정버튼 클릭시 데이터수정
	$('button[name=updateBtn]').on('click',function(){
		alert('수정은 진행상태변경만 가능 있습니다.');
		
		var checkbox=$('input[name=check]:checked');
		// 체크박스 갯수구함
		var i = checkbox.length;
		var data={};
		// 체크된 체크박스 갯수만큼 값저장
		checkbox.each(function(i){
			
			var tr = checkbox.parent().parent().eq(i);
			var td = tr.children();
			var order_num = td.eq(3).children('input').val()
			var order_progression= td.eq(10).children('input').val();
			
			data.order_num = order_num;
			data.order_progression = order_progression;
			
			if(order_progression == null){
				alert('진행상태를 입력해주세요');
			}
			
			console.log(data);
				// 값 확인용 코드
			alert('주문번호 : '+order_num
			+'진행상황 : '+order_progression);
			
			//비동기통신을위해사용
			// 옵션중에서 dataType은 응답받는 데이터의 타입
			// header는 전송하는 데이터의타입
			$.ajax({
			url:"/shop/order/update",	
			async:true,				
			type:"post",
			headers: {'Content-Type': 'application/json'},				
			data: JSON.stringify(data),					
			dataType:"text",	
			success:function(re){
				console.log(re);
			},
			error:function(){
				alert("실패");
			}
			
			
		});
			
			
		});
		//여기까지 전송할 값 전송 -> 제이슨파일로만듬
		//$('#eProductSearchForm').submit(menu);
		
	});
	
	
});