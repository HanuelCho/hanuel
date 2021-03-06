package com.project.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.project.dao.HtmlEmailDAO;
import com.project.dto.MemberDTO;
import com.project.service.MemberService;


@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private HttpSession session;
	@Autowired
	private MemberService mservice;
	@Autowired
	private HtmlEmailDAO edao;
	@RequestMapping("loginForm")
	public String goLogin() {
		return "member/login";
	}

	@RequestMapping("loginProc")
	public String login(MemberDTO mdto) {
		System.out.println("로그인프록  " + mdto.getMember_id());
		int result = mservice.login(mdto);
		if (result == 1) {
			String confirm=mservice.checkConfirm(mdto.getMember_id());
			if(confirm.equals("y")) {
			session.setAttribute("id", mservice.select_member(mdto.getMember_id()));
			return "redirect:/home";
			}else if(confirm.equals("n")){
				return "member/confirm";
			}
			
		} else {
			return "member/notLogin";
		}
		return "member/home";
	}

	@RequestMapping("joinForm")
	public String goJoin() {
		return "member/joinMem";
	}

	@RequestMapping("joinProc")
	public String joinInsert(MemberDTO mdto) {

		String id = mdto.getMember_id();
		System.out.println("조인프록         " + id);
		try {
			edao.sendMail(id);
		} catch (Exception e) {
			e.printStackTrace();
		}


		int result = mservice.joinInsert(mdto);
		System.out.println(result);
		return "redirect:/home";
	}

	@RequestMapping("logOutProc")
	public String logout() {
		session.invalidate();
		return "redirect:/home";
	}



	@RequestMapping("myPage")//메인에서 마이페이지로 가기
	public String myPage() {
		return "/member/myPage";
	}
	@RequestMapping("edit_mypage")
	public String edit_mypage(MemberDTO mdto) {//마이페이지에서 글 정보수정 버튼 누르기

		System.out.println("정보수정 맵핑");
		System.out.println("1");
		System.out.println(mservice.edit_mypage(mdto));
		session.setAttribute("id",mservice.select_member(mdto.getMember_id()));
		return "member/edit_OK";

	}
	
	@RequestMapping("uploadImg")
	public String uploadImg(MultipartFile file) {//마이페이지>정보수정>프로필 이미지 바꾸기
		System.out.println("업로드 이미지 맵핑");
		String time =new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		String savedName = UUID.randomUUID().toString().replace("-","").substring(0,8);
		String uploadPath = session.getServletContext().getRealPath("/resources/img/profile-img/"+time+"/");//파일 저장 위치
		File makeFile = new File(uploadPath);
		if(!makeFile.exists()) makeFile.mkdir();
		System.out.println(uploadPath);
		File f = new File(uploadPath+"/"+savedName+"__.jpg");
		try {
		file.transferTo(f);//여기까지 사진 저장되는지 확인	
		MemberDTO mdto= (MemberDTO)session.getAttribute("id");
		String id =mdto.getMember_id();
		String path = "/img/profile-img/"+time+"/"+f.getName();//저장된 이름 뽑아옴
		//id랑 path를 서비스에 보내야지
		mservice.uploadImg(path, id);	
		session.setAttribute("id", mservice.select_member(id));//바뀐 세션값 초기화
		}catch(Exception e) {
			e.printStackTrace();
		}

		return "member/myPage";
	}
	@RequestMapping("verifiedId")
	public String verifiedId(String id) {
		System.out.println("아이디                                "+id);
		
		String confirm=mservice.checkConfirm(id);
		
		if(confirm.equals("n")) {
			mservice.confirmId(id);
			return "member/emailConfirm";
			
			}else if(confirm.equals("y")){
				
				return "member/reConfirm";
			}	
		return null;
	}

}
