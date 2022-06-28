$(document).ready(function(){
   
    // 리뷰등록 버튼 누를시 리뷰등록에 필요한 값들 전송
   // 수정버튼 클릭시 데이터수정
   $('input[name=review]').on('click',function(){
      alert('버튼클릭');
      
      var data={};
      // 체크된 체크박스 갯수만큼 값저장
      var tr = $(this).closest('tr');
      var td = tr.find('td:eq(0)');
      var order_num = td.children('#order_num').val();
      var shop_id = td.children('#shop_id').val();
      var member_num = td.children('#member_num').val();
      var order_menu = td.children('#order_menu').val();
      var menu_count = td.children('#menu_count').val();
      var his_id = td.children('#his_id').val();
      
      data.order_num = order_num;
      data.shop_id = shop_id;
      data.member_num = member_num;
      data.order_menu = order_menu;
      data.menu_count = menu_count;
      
      
      // 값 확인용 코드
      alert('주문 : '+order_num
      +'메뉴 : '+order_menu
      +'수량 : '+menu_count);
         
      console.log(data);
      
      var form = document.forms[his_id];
      
      form.submit();
      
   });
   
   
});