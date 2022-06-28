$(document).ready(function(){
	// 상단 체크버튼 클릭시 전체클릭 or 천체해제
	$('input[name=allChk]').on('change',function(){
		$('input[name=check]').prop('checked',this.checked);
	});
	// 체크박스 갯수구함
	
	// 수정버튼 클릭시 데이터수정
	$('button[name=updateBtn]').on('click',function(){
		var checkbox=$('input[name=check]:checked');
		var i = checkbox.length;
		var data={};
		// 체크된 체크박스 갯수만큼 값저장
		checkbox.each(function(i){
			
			var tr = checkbox.parent().parent().eq(i);
			var td = tr.children();
			var menu_coder= checkbox.siblings('input').val();
			var menu_name = td.eq(1).children().children().children('input').val();
			var menu_price = td.eq(2).children('input').val();
			var saling_check = td.eq(3).children('input').val();
			var recommendation = td.eq(4).children('input').val();
			var category_num = td.eq(5).children().children('input').val();
			var sale_rate = td.eq(6).children('input').val();
			var menu_explanation = td.eq(7).children('input').val();
			
			data.menu_coder = menu_coder;
			data.menu_name = menu_name;
			data.menu_price = menu_price;
			data.saling_check = saling_check;
			data.recommendation = recommendation;
			data.category_num = category_num;
			data.sale_rate = sale_rate;
			data.menu_explanation = menu_explanation;
			
			if(menu_name == null){
				alert('메뉴명을 입력해주세요');
			}
			if(menu_price == null){
				alert('메뉴가격을 입력해주세요');
			}
			
			console.log(data); 
				// 값 확인용 코드
			alert('메뉴코드 : '+menu_coder
			+'메뉴이름 : '+menu_name
			+'메뉴가격 : '+menu_price
			+'할인여부 : '+saling_check
			+'추천여부 : '+recommendation
			+'카테고리 : '+category_num
			+'할인율 : '+sale_rate
			+'상품설명 : '+menu_explanation);
			
			//비동기통신을위해사용
			// 옵션중에서 dataType은 응답받는 데이터의 타입
			// header는 전송하는 데이터의타입
			$.ajax({
			url:"/shop/menu/update",	
			async:true,				
			type:"post",
			headers: {'Content-Type': 'application/json'},				
			data: JSON.stringify(data),					
			dataType:"text",	
			success:function(re){
				console.log(re);
				location.reload(); 
			},
			error:function(){
				alert("실패");
			}
			
			
		});
			
			
		});
		//여기까지 전송할 값 전송 -> 제이슨파일로만듬
		//$('#eProductSearchForm').submit(menu);
		
		menu=JSON.stringify(data);
		console.log(menu);
		
		
		
		
		
	});
	// 삭제하기 버튼클릭시 데이터삭제
	$('button[name=deleteBtn]').on('click',function(){
		var checkbox=$('input[name=check]:checked');
		var i = checkbox.length;
		var data={};
		// 체크된 체크박스 갯수만큼 값저장
		checkbox.each(function(i){
			
			var tr = checkbox.parent().parent().eq(i);
			var td = tr.children();
			var menu_coder= checkbox.siblings('input').val();
			data.menu_coder = checkbox.siblings('input').val();
			
			console.log(data);
				// 값 확인용 코드
			alert('메뉴코드 : '+menu_coder);
			
			//비동기통신을위해사용
			// 옵션중에서 dataType은 응답받는 데이터의 타입
			// header는 전송하는 데이터의타입
			$.ajax({
			url:"/shop/menu/delete",	
			async:true,				
			type:"post",
			headers: {'Content-Type': 'application/json'},				
			data: JSON.stringify(data),					
			dataType:"text",	
			success:function(re){
				console.log(re);
				location.reload(); 
			},
			error:function(){
				alert("실패");
			}
			
			
		});
			
			
		});
		//여기까지 전송할 값 전송 -> 제이슨파일로만듬
		//$('#eProductSearchForm').submit(menu);
		
		menu=JSON.stringify(data);
		console.log(menu);
		
		
		
		
		
	});
	
	
});
// 버튼클릭시 체크된 행의 값을 가져옴
$("#rowChk _product_no").click(function(){
	var rowData = new Array();
	var tdArr = new Array();
});