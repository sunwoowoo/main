package com.bitstudy.app.controller;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.*;
import com.bitstudy.app.service.k_zzimService;
import com.bitstudy.app.service.korea_tourService;
import com.bitstudy.app.service.mypagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
public class modetour_korea {
    @Autowired
    korea_tourService korea_tourService;

    @Autowired
    UserDao userDao1;

    @Autowired
    k_zzimService kzzimService;

    @Autowired
    mypagService mypagService;

    /* 도 불러오기*/
    @PostMapping("/modetour_korea/do_area")
    @ResponseBody
    public List<Do_areaDTO> regist_do_area(){
        List<Do_areaDTO> doList = korea_tourService.getDoList();
        return doList;
    }

    /*시 불러오기*/
    @PostMapping("/modetour_korea/si_area")
    @ResponseBody /// jsp의 ajax로 보내줄 떄 직렬화가 필요하면 달아줌. 자바객체를 일자로 문자열로 바꾸기
    public List<Si_areaDTO> regist_si_area(@RequestBody int do_id){ //
        List<Si_areaDTO> siList = korea_tourService.getSiList(do_id);
        return siList;
    }







    /* 글 쓰기 - 폼 불러오기 */
    @GetMapping("/modetour_korea/write")
    public String write( HttpServletRequest request,HttpSession session, korea_tourDto ktDto, Model m) {
        m.addAttribute("mode","new");
        String currUserId = (String) session.getAttribute("id");

        if(!loginChk(session)){
            session.setAttribute("prevPage", request.getServletPath()); //  "/board/list"

            // 리다이렉트로 로그인 페이지로 이동 시키기
            return "redirect:/login";
        }

        ktDto.setK_writer(currUserId);

        UserDto loginuserDto = mypagService.select(currUserId);
        System.out.println("loginUserDto: " + loginuserDto);
        m.addAttribute("loginuserDto", loginuserDto);
        return "modetour_trip_item";
    }

    /* 글 쓰기 DB에 저장 */
    private static final String F_PATH =
            //"C:/Users/SAMSUNG/IdeaProjects/Team_projects/src/main/webapp/resources/img/ktour_upload_img"
            //"D:/web/Team_projects/src/main/webapp/resources/img/ktour_upload_img"
            "E:/web/Team_projects/src/main/webapp/resources/img/ktour_upload_img/"
            ;
    @PostMapping("/modetour_korea/write")
    public String write(@RequestParam(value="f_file", required = false) MultipartFile mf, korea_tourDto ktDto, HttpSession session ) {
        String currUserId = (String) session.getAttribute("id");



        /* 파일 업로드 */
        String originalFileName = mf.getOriginalFilename();
        String uploadFileName = System.currentTimeMillis() + originalFileName;
        String safeFile = F_PATH + uploadFileName;
        System.out.println("originalFileName: " + originalFileName);
        System.out.println("uploadFileName: " + uploadFileName);
        System.out.println("safeFile: " + safeFile);
        try {
            mf.transferTo(new File(safeFile));
        } catch (Exception e) {
            e.printStackTrace();
        }

        ktDto.setK_writer(currUserId);
        ktDto.setK_tra_img(uploadFileName);
        korea_tourService.write(ktDto);


        return "redirect:/modetour_korea/search";
    }


    /* 수정 */
    @RequestMapping("/modetour_korea/modify")
//    public String modify(korea_tourDto ktDto, Integer page, Integer pageSize, Model m, HttpSession session) {
    public String modify(@RequestParam(value="f_file", required = false) MultipartFile mf, korea_tourDto ktDto, k_searchDto sc, Model m, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String currUserId = (String) session.getAttribute("id");
        // 2. 기존 저장소(DTO) 사용
        /* 파일 업로드 */
        String originalFileName = mf.getOriginalFilename();
        String uploadFileName = System.currentTimeMillis() + originalFileName;
        String safeFile = F_PATH + uploadFileName;
        System.out.println("originalFileName: " + originalFileName);
        System.out.println("uploadFileName: " + uploadFileName);
        System.out.println("safeFile: " + safeFile);
        try {
            mf.transferTo(new File(safeFile));
        } catch (Exception e) {
            e.printStackTrace();
        }

        ktDto.setK_writer(currUserId);
        ktDto.setK_tra_img(uploadFileName);


        korea_tourService.modify(ktDto);
//        +sc.getQueryString()
        return "redirect:/modetour_korea/search";
    }

    /* 게시글 삭제 */
    @RequestMapping("/modetour_korea/remove")
//    public String remove(Integer bno, Integer page, Integer pageSize, HttpSession session) {
    public String remove(Integer k_no, k_searchDto sc, HttpSession session ,HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        // 인코딩
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String currUserId = (String) session.getAttribute("id");
        System.out.println(k_no +". "+ currUserId);
        int rowCount = korea_tourService.remove(k_no, currUserId);

        if(rowCount == 1) { // 하나(해당 글) 지웠다는 뜻
            System.out.println("삭제했음");
        }
        else { // 해당 글이 없어서 못지웠다는 뜻
            System.out.println("삭제 못했음");
        }
//        return "redirect:/modetour_korea/list?page="+sc.getPage()+"&pageSize="+sc.getPageSize()+"&option="+sc.getOption()+"&keyword="+sc.getKeyword();
        return "redirect:/modetour_korea/search";
    }

    /* 게시글 하나만 읽기 (상세페이지) */
    @GetMapping("/modetour_korea/read")
    public String read(Integer k_no, Integer page, Integer pageSize, Model m, HttpSession session ) { //

        m.addAttribute("mode","read");

            korea_tourDto ktDto = korea_tourService.read(k_no);
            //225,새 게시글,새 내용,asdf3,0,0,2024-05-17 15:20:45

            UserDto userDto = userDao1.selectUser(ktDto.getK_writer());

            k_zzimDto u = new k_zzimDto();

            u.setK_no(k_no);
            u.setU_id((String) session.getAttribute("id"));
m.addAttribute("u",session.getAttribute("id"));
        System.out.println(session.getAttribute("id"));
        System.out.println("u"+u);
        k_zzimDto iszzim = kzzimService.selectIszzim(u);

        // 찜했는지 모델에 담기

        m.addAttribute("iszzim", iszzim);
        System.out.println(iszzim);

            if(ktDto != null) { // 해당 게시글이 있을때
                m.addAttribute("ktDto", ktDto);

                // page랑 pageSize는 게시글 불러오는거랑 상관은 없지만, 목록으로 돌아갈때 다시 기존 페이지로 돌아가야 하기 때문에 정보를 boardList.jsp 에 다시 보내줘야 해서 필요함
                m.addAttribute("page", page);
                m.addAttribute("pageSize", pageSize);

                //게시글 쓴 유저 정보 모델에 담기
                m.addAttribute("userDto", userDto);

//로그인한 유저 정보 모델에 담기
                m.addAttribute("loginId",session.getAttribute("id"));

                System.out.println(ktDto.getK_writer());
                System.out.println("게시글 쓴 유저 정보: "+ userDto);
                return "modetour_trip_item";
            }
            else { // 해당 게시글이 없을때
                return "redirect:/modetour_korea/search";
            }



    }


//    @PostMapping(value="modetour_korea/read")
//    @ResponseBody
//    public String  tologin(@RequestBody HttpServletRequest request){
//        HttpSession session = request.getSession();
//        session.setAttribute("prevPage", request.getServletPath());
//
//        System.out.println(request.getServletPath());
//        return "redirect:/login";
//    }


    /*검색*/
    @GetMapping(value = "/modetour_korea/search")
    public String search(k_searchDto sc, Model m, HttpServletRequest request,  HttpServletResponse response) {

//        request.setCharacterEncoding("UTF-8");
//        response.setContentType("text/html; charset=UTF-8");

        HttpSession session = request.getSession();
        String u_id = (String) session.getAttribute("id");

        m.addAttribute("u", session.getAttribute("id"));


        try {
            Integer page = sc.getPage();
            Integer pageSize = sc.getPageSize();

            if (page == null) {
                page = 1;
                sc.setPage(1);
            }
            if (pageSize == null) {
                pageSize = 6;
                sc.setPageSize(6);
            }
            if (sc.getGender() == null) {
                sc.setGender(-1);
            }
            if (sc.getBirth() == null) {
                sc.setBirth("");
            }
                // 총 게시글 수 구하기 (221개)
                int totalCount = korea_tourService.getSearchResultCount(sc);

                // 페이징 계산 (221 / (double)10)
                k_PageHandler pageHandler = new k_PageHandler(totalCount, page, pageSize);

            /*
                 int totalCount = 221;
                 int pageSize = 10;
                 int totalPage = 0;
                 int navPage = 10;
                 int startPage = 0;
                 int endPage = 0;
                 int page = 1;
                 boolean showPrevBtn = false;
                 boolean showNextBtn = true;

                 1 2 3 4 5 6 7 8 9 10 [다음]

*/

                // boardMapper.xml 의 <select id="selectPage" 부분에 값 보내기
                // (몇번째 글부터 몇번째 글까지 가져올지 결정)
                int offset = (sc.getPage() - 1) * sc.getPageSize();
                sc.setOffset(offset);

                // 이렇게 하면 글 10개 가져옴
                List<korea_tourDto> list = korea_tourService.getSearchResultPage(sc);

                m.addAttribute("list", list);
                m.addAttribute("ph", pageHandler);

                m.addAttribute("u_id", u_id);
                System.out.println("list: " + list);




            return "modetour_korea";
        } catch(Exception e){
                System.out.println("에러남");
                throw new RuntimeException(e);
            }

        }

//    @PostMapping("/modetour_korea/zzim")
//    @ResponseBody
//    public List<Si_areaDTO> zzim_insert(@RequestBody int k_no){
//        List<Si_areaDTO> siList = korea_tourService.getSiList(k_no);
//        return siList;
//    }

        private boolean loginChk (HttpSession session){
            return session.getAttribute("id") != null;
            // 세션에 id가 있으면 결과는 true
            // 없으면 false 나옴
        }



}
