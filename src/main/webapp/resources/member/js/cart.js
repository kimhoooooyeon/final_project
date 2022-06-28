$(document).ready(function(){
	// 음식 눌렀을때 동작할 함수
	$('button[name=updateBtn]').on('click',function(){
	});
	
	// 카트에 담기 버튼 클릭시 실행
	$('button[name=btn-cartAdd]').on('click',function(){
		//돌아갈 기능은
		// 메뉴명, 갯수, 전송, 가격 받기
		
		var data={};
		// 체크된 체크박스 갯수만큼 값저장
					
		// 각 해당하는 값 가져와서
		//var menu_name= ('input[name=menu_name]').val();
		//var menu_price = ('input[name=menu_price]').val();
		//var count = ('input[name=pop_out]').val();
		
		
		var shop_id = document.getElementById('shop_id').value;
		var shop_name = document.getElementById('shop_name').value;
		var menu_name = document.getElementById('select_menu_name').value;
		var menu_price = document.getElementById('select_menu_price').value;
		var count = document.getElementById('count').value;
					
		
		data.shop_id = shop_id;
		data.menu_name = menu_name;
		data.menu_price = menu_price;
		data.count = count;
		
			
		console.log(data);
			// 값 확인용 코드
	//	alert('메뉴이름 : '+menu_name
	//	+'메뉴가격 : '+menu_price
	//	+'수량 : '+count);
			
		//비동기통신을위해사용
		$.ajax({
		url:"/cartadd",	
		async:true,				
		type:"post",
		headers: {'Content-Type': 'application/json'},				
		data: JSON.stringify(data),					
		dataType:"text",	
		success:function(total_price){
			console.log(total_price);
			$("#Img_Area").css("display","none ");
//			$('#cartt').append("<li>"+menu_name+"</li>",
//			"<li>"+menu_price+"</li>",
//			"<li>"+count+"</li>");
			//cartList(data);
			location.href='/order?shop_id='+shop_id+'&shop_name='+shop_name;
			
		},
		error:function(){
			alert("실패");
		}
		
			
		});
			
			
	});
});