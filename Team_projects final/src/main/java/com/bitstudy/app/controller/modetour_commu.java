package com.bitstudy.app.controller;

import com.bitstudy.app.domain.*;
import com.bitstudy.app.service.boardService;
import com.bitstudy.app.service.mypagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class modetour_commu {
    @Autowired
    boardService boardService;

    @Autowired
    mypagService mypagService;
    @RequestMapping(value = "/modetour_commu")
    public String modetour_commu() {
        return "modetour_commu";
    }

    // 글쓰기 버튼 누르면 글쓰기 페이지로 이동
    @GetMapping("/modetour_commu_dp/write")
    public String write(Model m,HttpServletRequest request,UserDto userDto) {
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        userDto.setId(id);
        userDto = mypagService.select(id);
        if("0".equals(userDto.getGender())){
            userDto.setGender("남");
        }
        else{
            userDto.setGender("여");
        }

        m.addAttribute("userDto",userDto);

        m.addAttribute("mode", "new");
        return "modetour_commu_dp";
    }

    // 글 db에 저장하기
    private static final String F_PATH = "C:/Users/user1/Desktop/Team_projects final (4)/Team_projects final/src/main/webapp/resources/img/commu_img/";

    @PostMapping("/modetour_commu_dp/write")
    public String write(@RequestParam(value = "f_file", required = false) MultipartFile mf, BoardDto boardDto, board_imgDto board_imgDto, HttpSession session) {


        System.out.println("마지막번호" + boardService.lastb_no());
        String currUserId = (String) session.getAttribute("id");

        boardDto.setB_writer(currUserId);
        System.out.println(currUserId);

        String originalFileName = mf.getOriginalFilename();
        String safeFile = F_PATH + originalFileName;

        System.out.println("사진저장명: " + safeFile);
        try{
            mf.transferTo(new File(safeFile));
        }catch(Exception e){
            e.printStackTrace();
        }
        System.out.println(originalFileName);
        boardService.insert(boardDto);

        board_imgDto.setB_no(boardService.lastb_no());
        board_imgDto.setKi_src(originalFileName);

        boardService.insert_img(board_imgDto);


        return "redirect:/modetour_commu/list";
    }


    // 커뮤니티 상세페이지 이동
    @GetMapping("/modetour_commu_dp/read")
    public String read(Integer b_no, Integer page, Integer pageSize, Model m, UserDto userDto, HttpServletRequest request) {

        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        userDto.setId(id);
        userDto = mypagService.select(id);
        if("0".equals(userDto.getGender())){
            userDto.setGender("남");
        }
        else{
            userDto.setGender("여");
        }

        m.addAttribute("userDto",userDto);
        BoardDto boardDto = boardService.read(b_no);
        System.out.println("확인  :: " + boardDto.getKi_src());


        if (boardDto != null) {


            m.addAttribute("boardDto", boardDto);

            m.addAttribute("page", page);
            m.addAttribute("pageSize", pageSize);

            return "modetour_commu_dp";
        } else {
            return "";
        }
    }

    //커뮤니티 리스트 조회수 순으로 출력
    @GetMapping("/modetour_commu/list/view")
    public String like_list(Integer page, Integer pageSize, Model m, HttpServletRequest request,UserDto userDto) {
        HttpSession session = request.getSession();
//        if(loginChk(session)){
//            session.setAttribute("prevPage", request.getServletPath());
//
//            return "redirect:/login";
//        }
        session.setAttribute("option","view");
        String id = (String) session.getAttribute("id");
        userDto.setId(id);
        userDto = mypagService.select(id);
        m.addAttribute("userDto",userDto);
        try {
            if (page == null) page = 1;
            if (pageSize == null) pageSize = 4;

            int totalCount = boardService.getCount();

            PageHandler pageHandler = new PageHandler(totalCount, page, pageSize);

            Map map = new HashMap();
            map.put("offset", (page - 1) * pageSize);
            map.put("pageSize", pageSize);

            List<BoardDto> list = boardService.getviewPage(map);
            m.addAttribute("list", list);
            m.addAttribute("ph", pageHandler);
            m.addAttribute("sort", "view"); //
            System.out.println("좋아요list: " + list);
            System.out.println("list: " + list);
            for (int i = 0; i < list.size(); i++) {
                System.out.println("src 값 확인 :: " + list.get(i).getKi_src());
            }
            return "modetour_commu";
        } catch (Exception e) {
            System.out.println("에러");
            throw new RuntimeException(e);
        }
    }

    // 커뮤니티 리스트 한페이지당 최신순 4개씩 출력
    @GetMapping("/modetour_commu/list")
    public String list(Integer page, Integer pageSize, Model m, HttpServletRequest request,UserDto userDto) {
        HttpSession session = request.getSession();
        if(!loginChk(request)){
            return "redirect:/login";
        }
        session.removeAttribute("option");
        String id = (String) session.getAttribute("id");
        userDto.setId(id);
        userDto = mypagService.select(id);
        m.addAttribute("userDto",userDto);
        try {
            if (page == null) page = 1;
            if (pageSize == null) pageSize = 4;

            int totalCount = boardService.getCount();

            PageHandler pageHandler = new PageHandler(totalCount, page, pageSize);

            Map map = new HashMap();
            map.put("offset", (page - 1) * pageSize);
            map.put("pageSize", pageSize);

            List<BoardDto> list = boardService.getPage(map);

            m.addAttribute("list", list);
            m.addAttribute("ph", pageHandler);

            System.out.println("list: " + list);
            for (int i = 0; i < list.size(); i++) {
                System.out.println("src 값 확인 :: " + list.get(i).getKi_src());
            }

            return "modetour_commu";
        } catch (Exception e) {
            System.out.println("에러");
            throw new RuntimeException(e);
        }

    }
    /* 사진 값 0으로  */
    @GetMapping("/imgdelete")
    @ResponseBody
    public ResponseEntity<Integer>modify(Integer b_no){

        board_imgDto dto = new board_imgDto();
        BoardDto boardDto = new BoardDto();
        boardDto.setKi_src("");
        boardService.modify(boardDto); //
        System.out.println("ajax 체크");
        System.out.println("b_no :: " + b_no);


        try{
            dto.setB_no(b_no);
            dto.setKi_src("");

            System.out.println("여기좀보세요");

            if(boardService.imgupdate(dto)!=1){
                throw new Exception("사진삭제 실패");
            }
            HttpHeaders responseHeader = new HttpHeaders();
            responseHeader.add("content-type","text/html; charset=UTF-8");

            return new ResponseEntity<Integer>(responseHeader, HttpStatus.OK);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
        }

    }

    /* 수정 */
    @RequestMapping("/modetour_commu_dp/modify")
    public String modify(@RequestParam(value = "f_file", required = false) MultipartFile mf, BoardDto boardDto, SearchDto sc, board_imgDto board_imgDto, Model m, HttpSession session){
        System.out.println("****************난 바보다****************");
        String currUserId = (String) session.getAttribute("id");
        boardDto.setB_writer(currUserId);
        String option = (String)session.getAttribute("option");
        boardService.modify(boardDto);
        board_imgDto.setB_no(boardDto.getB_no());
        System.out.println("bno가져오셈: "+ boardDto.getB_no());
        System.out.println("여기에요: "+boardDto.getKi_src());
        System.out.println("세션옵션값: " + option);
//        1. 새로운 파일로 넘어올때
        if(mf==null || mf.isEmpty() ){
            boardDto.getKi_src();
            board_imgDto.setKi_src(boardDto.getKi_src());
        }
        else{
            String originalFileName = mf.getOriginalFilename();
            System.out.println(originalFileName);
            String safeFile = F_PATH + originalFileName;

            System.out.println("사진저장명: " + safeFile);
            try{
                mf.transferTo(new File(safeFile));
            }catch(Exception e){
                e.printStackTrace();
            }
            board_imgDto.setKi_src(originalFileName);
        }




        boardService.imgupdate(board_imgDto);
        if(option == "view"){
            return "redirect:/modetour_commu/list/view"+sc.getQueryString();
        }else{
            return "redirect:/modetour_commu/list"+sc.getQueryString();
        }

    }

    /* 삭제 */
    @RequestMapping("/modetour_commu_dp/remove")
    public String remove(Integer b_no, SearchDto sc, HttpSession session){
            String currUserId = (String) session.getAttribute("id");
            int rowCount = boardService.remove(b_no,currUserId);
            boardService.imgdelete(b_no);
            if(rowCount == 1){
                System.out.println("삭제완료");
            }
            else{
                System.out.println("삭제실패");
            }

            return "redirect:/modetour_commu/list"+sc.getQueryString();
    }

//    /* 사진 값 0으로  */
//    @GetMapping("/imgdelete")
//    @ResponseBody
//    public ResponseEntity<Integer>modify(Integer b_no){
//
//        board_imgDto dto = new board_imgDto();
//
//        System.out.println("ajax 체크");
//        System.out.println("b_no :: " + b_no);
//
//
//        try{
//            dto.setB_no(b_no);
//            dto.setKi_src("");
//            System.out.println("여기좀보세요");
//            if(boardService.imgupdate(dto)!=1){
//                throw new Exception("사진삭제 실패");
//            }
//            HttpHeaders responseHeader = new HttpHeaders();
//            responseHeader.add("content-type","text/html; charset=UTF-8");
//
//            return new ResponseEntity<Integer>(responseHeader, HttpStatus.OK);
//        }catch (Exception e){
//            e.printStackTrace();
//            return new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
//        }
//
//    }



    private boolean loginChk(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return session.getAttribute("id") != null;
    }

}

