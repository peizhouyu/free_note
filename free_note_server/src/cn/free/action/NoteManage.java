package cn.free.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import cn.free.bean.Note;
import cn.free.dao.NoteDAO;
import cn.free.service.NoteService;

public class NoteManage extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2995933924893742118L;
	private Integer id;
	private String title;
	private String info;
	private String content;
	
	
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	HttpSession session = request.getSession();
	String user_name = (String) session.getAttribute("account");
	Integer userId;
 	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	
	//添加笔记
	public String note_add() {
		Note note = new Note();
		NoteService noteService = new NoteService();
		
		userId = noteService.getUserId(user_name);
		note.setUserId(userId);
		note.setUserName(user_name);
		note.setTitle(title);
		note.setInfo(info);
		note.setContent(content);
		
//		System.out.println(title);
//		System.out.println(info);
//		System.out.println(content);
		
		if (noteService.note_add(note)) {
			return SUCCESS;
		}else{
			return "input";
		}
		
	}
	
	//获取内容列表
	public  String note_getlist() {
		NoteDAO<Object> noteDao = new NoteDAO<>();
		request.setAttribute("noteList" ,  noteDao.list("from Note"));
	
		return SUCCESS;
	}
	
	//获取单篇文章内容
	public String note_getone() {
		NoteDAO<Object> noteDao = new NoteDAO<>();
		Note onenote = (Note) noteDao.find(Note.class, id);
		request.setAttribute("onenote", onenote);
		return SUCCESS;
	}
	
	//根据id删除文章
	public String note_delete() {
		int del_id = Integer.parseInt(request.getParameter("del_id"));
		NoteDAO<Object> noteDao = new NoteDAO<>();
		Note note = (Note) noteDao.find(Note.class, del_id);
		noteDao.delete(note);
		return SUCCESS;
		
	}
	
	//修改文章
	
	public String note_change() {
		int id = Integer.parseInt(request.getParameter("id"));
		NoteDAO<Object> noteDao = new NoteDAO<>();
		Note note = (Note) noteDao.find(Note.class, id);
		request.setAttribute("note", note);
		return SUCCESS;
	}
	
	
	public String note_update() {
		
		NoteDAO<Object> noteDAO = new NoteDAO<>();
		Note note = (Note) noteDAO.find(Note.class, id);

		note.setTitle(title);
		note.setInfo(info);
		note.setContent(content);
		noteDAO.update(note);
		return SUCCESS;
	}
	
	
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
