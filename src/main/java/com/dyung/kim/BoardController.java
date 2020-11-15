package com.dyung.kim;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dyung.kim.service.ItemService;
import com.dyung.kim.util.FileService;
import com.dyung.kim.util.PageNavigator;
import com.dyung.kim.vo.CartVO;
import com.dyung.kim.vo.ComVO;
import com.dyung.kim.vo.FileVO;
import com.dyung.kim.vo.ItemVO;

@Controller
@RequestMapping(value="/board")
public class BoardController {

	@Autowired
	private ItemService service;
	final int CountPerPage=12;
	final int PagePerGroup=5;
	@Autowired
	private com.dyung.kim.service.FileService service2;
	
	private String uploadPath="C:\\WorkspaceSTS\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MarketProject\\resources\\boardfile";
	
	@Autowired
	private HttpSession session;
	@RequestMapping(value="/boardAllList", method=RequestMethod.GET)
	public String boardList(@RequestParam(value="page",defaultValue="1") int page
							,@RequestParam(value="item_option", defaultValue="") String item_option
							,Model model) {
		
		
		int count  =service.countBoard();
		PageNavigator navi = new PageNavigator(CountPerPage,PagePerGroup,page,count);
		ArrayList<HashMap<Object, Object>> list = service.selectItemAll(item_option, navi.getStartRecord(),navi.getCountPerPage());

		for(int i=0; i<list.size(); i++) {
			String add = (String)list.get(i).get("ACC_ADD2");
			//add = 부산광역시 북구 충장로
			String[] add1 = add.split(" ");
			
			
			String add_1 = add1[0];
			String add_2 = add1[1];
			String re_add = add_1+" "+add_2;
	
			
			list.get(i).put("re_add", re_add);
		}
		
		model.addAttribute("navi",navi);
		model.addAttribute("list", list);
		return "board/boardList";
	}
	
	@RequestMapping(value="/boardWriteForm", method=RequestMethod.GET)
	public String boardWriteForm() {
		return "board/boardWriteForm";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String boardWrite(ItemVO item, 
							@RequestParam("upload") MultipartFile[] upload,
							Model model) {
		ArrayList<FileVO> fileList = new ArrayList<FileVO>();
		String acc_id = (String)session.getAttribute("loginID");
		String acc_name = (String)session.getAttribute("loginNick");
		item.setAcc_id(acc_id);
		item.setAcc_name(acc_name);
		item.setItem_fileNum(upload.length);
		String page = service.itemInsert(item);
		//
		int item_num = item.getItem_num();
		for(int i=0; i<upload.length; i++) {
			if(!upload[i].isEmpty()) {
			FileVO file = new FileVO();
			String savedfile = FileService.saveFile(upload[i], uploadPath);
			file.setSavedfile(savedfile);
			file.setOriginalfile(upload[i].getOriginalFilename());
			file.setAcc_id(acc_id);
			file.setItem_num(item_num);
			file.setFile_index(i+1);
			fileList.add(file);
			int cnt = service2.fileInsert(fileList.get(i));
			}
		}

		return "redirect:/board/boardAllList";
	}
	
	@RequestMapping(value="/select", method=RequestMethod.GET)
	public String boardSelect(int ITEM_NUM, Model model) {
		int item_num = ITEM_NUM;
		HashMap<Object, Object> item = service.selectItem(item_num);
		String add = (String)item.get("ACC_ADD2");
		//add = 부산광역시 북구 충장로
		String[] add1 = add.split(" ");
		
		
		String add_1 = add1[0];
		String add_2 = add1[1];
		String re_add = add_1+" "+add_2;

		
		item.put("re_add", re_add);
		ArrayList<ComVO> list = service.commentSelect(item_num);
		model.addAttribute("item", item);
		model.addAttribute("com", list);
		return "board/boardSelect";
	}
	
	@ResponseBody
	@RequestMapping(value="/nextIndex", method=RequestMethod.GET)
	public FileVO nextIndex(String file_index, String item_no) {
		int next_index = Integer.parseInt(file_index)+1;
		int item_num = Integer.parseInt(item_no);
		HashMap<Object, Object> map = new HashMap<>();
		map.put("file_index", next_index);
		map.put("item_num", item_num);
		FileVO file = service.nextIndex(map);
		return file;
	}
	
	@ResponseBody
	@RequestMapping(value="/preIndex", method=RequestMethod.GET)
	public FileVO preIndex(String file_index, String item_no) {
		int next_index = Integer.parseInt(file_index)-1;
		int item_num = Integer.parseInt(item_no);
		HashMap<Object, Object> map = new HashMap<>();
		map.put("file_index", next_index);
		map.put("item_num", item_num);
		FileVO file = service.nextIndex(map);
		return file;
		
	}
	

	@RequestMapping(value="/myBoard", method=RequestMethod.GET)
	public String Myboard(Model model
						,@RequestParam(value="page",defaultValue="1") int page) {
		int count  =service.countBoard();
		PageNavigator navi = new PageNavigator(CountPerPage,PagePerGroup,page,count);
		String acc_id = (String)session.getAttribute("loginID");
		ArrayList<HashMap<Object, Object>> list = service.selectMyitem(navi.getStartRecord(),navi.getCountPerPage(), acc_id);
		model.addAttribute("navi",navi);
		model.addAttribute("list",list);
	//	System.out.println(list.toString());
		return "board/myBoard";
	}

	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String accountLogout() {
	   service.logout();
	   return "home";
	}
	
	@ResponseBody
	@RequestMapping(value="/commentWrite", method=RequestMethod.POST)
	public ComVO commentWrite(String item_no, String comment_contents) {
		int item_num = Integer.parseInt(item_no);
		ComVO comment = new ComVO();
		String acc_id = (String)session.getAttribute("loginID");
		String acc_name = (String)session.getAttribute("loginNick");
		comment.setAcc_id(acc_id);
		comment.setComment_contents(comment_contents);
		comment.setItem_num(item_num);
		comment.setAcc_name(acc_name);
		int cnt = service.commentInsert(comment);
		int comment_no = comment.getComment_no();
	//	System.out.println(comment_no);
		ComVO com = service.commentSelectOne(comment_no);
//		System.out.println(comment2.toString());
		return com;
	}
	
	@ResponseBody
	@RequestMapping(value="/insertCart", method=RequestMethod.GET)
	public int insertCart(String acc_id, int item_num)  {
		CartVO cart = new CartVO(acc_id, item_num);
	//	System.out.println("acc_id: " + acc_id + ", item_num: " + item_num);
		return service.insertCart(cart);
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteCart", method=RequestMethod.GET)
	public int deleteCart(int item_num) {
		
		return service.deleteCart(item_num);
	}
	
	@RequestMapping(value="/myChoiceBoard", method=RequestMethod.GET)
	public String myChoiceBoard(String acc_id, Model model) {
		System.out.println("acc_id: " + acc_id);
		System.out.println("확인해봅시다~\n" + service.listCart(acc_id));
		
		model.addAttribute("list", service.listCart(acc_id));
		
		return "board/myChoiceBoard";
	}
	
	@RequestMapping(value="/boardModifyForm", method =RequestMethod.GET)
	public String boardModifyForm(int item_num, Model model) {
		
		model.addAttribute("contents",service.modifyContents(item_num));
		return "board/boardModifyForm";
	}
	
	@RequestMapping(value="/boardModify", method =RequestMethod.POST)
	public String boardModify(ItemVO item) {
			
		return service.updataeContents(item);
	}	
}
