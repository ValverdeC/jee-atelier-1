package com.atelier1.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atelier1.controller.CardDao;
import com.atelier1.model.CardBean;

/**
 * Servlet implementation class RedirectAddCard
 */
@WebServlet("/addCard")
public class RedirectAddCard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CardDao dao;
	
	private static final String CARD = "card";
	private static final String NAME = "name";
	private static final String DESC = "description";
	private static final String IMG_URL = "imgUrl";
	private static final String FAMILY = "family";
	private static final String AFFINITY = "affinity";
	private static final String HP = "hp";
	private static final String ENERGY = "energy";
	private static final String ATTACK = "attack";
	private static final String DEFENCE = "defence";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RedirectAddCard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getDao();
		CardBean card = this.dao.addCard(request.getParameter(NAME), request.getParameter(DESC), request.getParameter(IMG_URL),
				request.getParameter(FAMILY), request.getParameter(AFFINITY), Integer.parseInt(request.getParameter(HP)),
				Integer.parseInt(request.getParameter(ENERGY)), Integer.parseInt(request.getParameter(ATTACK)),
				Integer.parseInt(request.getParameter(DEFENCE)));
		
		request.getSession().setAttribute(CARD, card);
		this.getServletContext().getRequestDispatcher( "/WEB-INF/displayByName.jsp" ).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void getDao(){
		if(this.getServletContext().getAttribute("DAO")!=null){
			this.dao = (CardDao)this.getServletContext().getAttribute("DAO");
		}else{
			this.dao = new CardDao();
			this.getServletContext().setAttribute("DAO",this.dao);
		}
	}

}
