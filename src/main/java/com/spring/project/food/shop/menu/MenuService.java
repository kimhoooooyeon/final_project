package com.spring.project.food.shop.menu;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

@Service
public class MenuService implements IMenuService {
	
	@Autowired HttpSession session;
	@Autowired(required = false) IMenuDAO menuDao;
	//메뉴 찾기
	@Override
	public ArrayList<MenuDTO> menuSearch(SearchDTO search) {
		System.out.println("menuSearch서비스실행");
//		Integer shop_num = (Integer) session.getAttribute("shop_num");
		Integer shop_num = 1;
		search.setShop_num(shop_num);
		System.out.println("서치함수에서 보내줄 상점넘버값은 : "  + shop_num);
		ArrayList<MenuDTO> menulist = menuDao.menuSearch(search);
		System.out.println("db결과 : "+menulist);
		return menulist;
	}
	// 메뉴 등록
	@Override
	public String menuRegister(MenuDTO menu) {
		System.out.println("메뉴등록서비스실행");
		System.out.println("입력받은 dto값은 : " +menu);
		// 수행기능 순서
		// 1. 상풍명 반드시 입력
		// 2. 판매가 반드시 입력
		// 3. 상품코드 확인? 이게 필요할까?
		// 4. default값 설정
		
		// 1번 조건
		if (menu.getMenu_name() == null || menu.getMenu_name().isBlank()) {
			return "메뉴명을 입력해주세요.";
		}
		// 2번조건 
		if (menu.getMenu_price() == null) {
			return "상품가격을 입력해주세요.";
		}
		// 3. 상품코드 확인했는지 >> 이게 필요할지는 모르겠음
		
		// 4. default값 설정
//		Integer shop_num = (Integer)session.getAttribute("shop_num ");
		Integer shop_num =1;
		menu.setShop_num(shop_num);
		if (menu.getMenuFileName() == null) {
			menu.setMenu_filename("1");
		}
		else {
			//파일업로드
			try {
				// 파일명 추출
				String menu_filename = menu.getMenuFileName().getOriginalFilename();
				menu.setMenu_filename(menu_filename);
				// 파일 경로 설정
				String uploadFolder = "C:\\final_project\\shop";
				System.out.println("파일이름 : " +menu_filename);
				
				//해당 경로에 폴더가 없으면 폴더생성
				if ( ! new File(uploadFolder).exists()) {
					System.out.println("해당경로에 폴더가 없어서 생성합니다.");
					System.out.println("폴더경로는 "+uploadFolder);
					new File(uploadFolder).mkdirs();
				}
				
				File saveFile = new File(uploadFolder+"\\"+menu_filename);
				FileCopyUtils.copy(menu.getMenuFileName().getBytes(),saveFile);
				menu.getMenuFileName().transferTo(saveFile);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		int result = menuDao.menuInsert(menu);
		
		if (result == 1) {
			return "메뉴가 성공적으로 등록되었습니다.";
		}
		else {
			return "관리자에게 문의해주세요";
		}
	}
	// 메뉴수정
	@Override
	public String menuUpdate(MenuDTO menu) {
		System.out.println("menuUpdate서비스실행");
		// 입력값 검증조건
		// 1. 메뉴명 입력했는지
		// 2. 메뉴가격을 입력했는지.
		String msg;
		// 1번조건
		if (menu.getMenu_name() == null) {
			msg ="메뉴명은 반드시 입력하셔야합니다.";
			return msg;
		}
		// 2번조건
		if (menu.getMenu_price() == null) {
			msg="메뉴가격은 반드시 입력하셔야합니다.";
		}
		if (menu.getMenu_filename()== "" || menu.getMenu_filename() == null) {
			menu.setMenu_filename("defaultImg");
		}
		int result = menuDao.menuUpdate(menu);
		
		if (result == 1) {
			msg="메뉴수정이 완료되었습니다.";
		}
		else {
			msg="수정실패, 관리자에게 문의해주세요";
		} 
		return msg;
	}

	@Override
	public String menuDelete(String menu_coder) {
		//입력값검증 
		//1번 조건 : 값이 제대로 넘어왔는지 확인
		if (menu_coder == null) {
			return "값이 선택되지 않았습니다.";
		}
		//통과하면 DB에 결과
		int result = menuDao.menuDelete(menu_coder);
		
		if (result == 1) {
			return "메뉴가 삭제되었습니다.";
		}
		else {
			return "알수없는 오류가 발생하였습니다. 관리자에게 문의하세요.";
		}
	}

	@Override
	public String isExistMenuCode(String title) {
		return null;
	}
	public ArrayList<CategoryDTO> categoryLoad() {
		System.out.println("categoryLoad()함수 수행");
//		Integer shop_num=(Integer) session.getAttribute("shop_num");
		// 테스트코드
		Integer shop_num = 1;
		ArrayList<CategoryDTO> list = menuDao.categoryLoad(shop_num);
		//결과물 확인하기위한 스텁코드
		System.out.println("입력됬던 shop_num : " + shop_num);
		System.out.println("list의 길이는 :" + list.size());
		for (int i = 0; i <= list.size(); i++) {
			System.out.println("반환값은 : " + list);
			
		}
		return list;
	}
	public ArrayList<MenuDTO> menuList() {
		System.out.println("menulist함수(서비스) 실행");
//		Integer shop_num = (Integer) session.getAttribute("shop_num");
		Integer shop_num = 1;
		ArrayList<MenuDTO> list = menuDao.menuList(shop_num);
		return list;
	}

}
