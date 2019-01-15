package com.gao.sh.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gao.sh.domain.Product;
import com.gao.sh.domain.nianbao;
import com.gao.sh.servide.ProductService;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

@SuppressWarnings("serial")
public class ProductWeb extends BaseServlet{

		/**
	 * 
	 */
	//添加商品
	public String addProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		    String pxmc = request.getParameter("pxmc");
		    String ptbh = request.getParameter("ptbh");
		    String ptny = request.getParameter("ptny");
		    String pzwh = request.getParameter("pzwh");
		    String ly = request.getParameter("ly");
		    String jibie = request.getParameter("jibie");
		    String szxs = request.getParameter("szxs");
		    String xsny = request.getParameter("xsny");
		    String hy = request.getParameter("hy");
		    String dw = request.getParameter("dw");
		    String dm = request.getParameter("dm");
		    String xm = request.getParameter("xm");
		    String dh = request.getParameter("dh");
		    String yzxm = request.getParameter("yzxm");
		    String yzxb = request.getParameter("yzxb");
		    String zc = request.getParameter("zc");
		    nianbao nianbao = new nianbao();
			//封装数据
			/*
			 * private String pxmc;
			private String ptbh;
			private String ptny;
			private String pzwh;
			private String ly;
			private String jibie;
			private String szxs;
			private String hy;
			private String dw;
			private String dm;
			private String xm;
			private String dh;
			private String yzxm;
			private String yzxb;
			private String xsny;
			private String zc;
			 * 
			 * */
			nianbao.setPxmc(pxmc);
			nianbao.setPtbh(ptbh);
			nianbao.setPtny(ptny);
			nianbao.setPzwh(pzwh);
			nianbao.setLy(ly);
			nianbao.setJibie(jibie);
			nianbao.setSzxs(szxs);
			nianbao.setHy(hy);
			nianbao.setDw(dw);
			nianbao.setDm(dm);
			nianbao.setXm(xm);
			nianbao.setDh(dh);
			nianbao.setYzxm(yzxm);
			nianbao.setYzxb(yzxb);
			nianbao.setXsny(xsny);
			nianbao.setZc(zc);
			//创建业务层方法
			ProductService productService = new ProductService();
			//调用方法向数据库中添加数据，传递
			productService.addProduct(nianbao);
			request.setAttribute("msg", "添加成功");
			return "/jsp/msg.jsp";
               
	   }
	//删除所有商品
	public String deleteAllProducts(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductService productService = new ProductService();
			productService.deleteAllProducts();
			request.setAttribute("msg", "已经删除所有");
		return "/jsp/msg.jsp";
		
		
	}
	//根据id删除商品
		public String deleteProductByPid(HttpServletRequest request, HttpServletResponse response)throws Exception {
	 
		String pid = request.getParameter("pid");
		ProductService productService = new ProductService();
			productService.deleteProductByPid(pid);
			request.setAttribute("msg", "删除商品成功");
		return "/jsp/msg.jsp";
		}
	
	//根据商品编号查询商品信息
		public String findProductsByPid(HttpServletRequest request, HttpServletResponse response)throws Exception{
		//根据商品id查询商品信息
		String pid =request.getParameter("jibie");
		ProductService productService = new ProductService();
		//调用方法，根据pid查询商品信息
		DBCursor cur = productService.findProductsByPid(pid);
		List<nianbao>nianbaos= new ArrayList<nianbao>();
		//根据cur判断数据库中是否有数据
		if (cur.size()==0) {
			request.setAttribute("msg", "没有产品");
		}else {
			//有数据 /获取cur游标中的数据
			while (cur.hasNext()) 
			{
				nianbao naibao = new nianbao();
				//获取商品 获取每一行
				DBObject p = cur.next();
				
				naibao.setPtbh((String) p.get("ptbh"));
				naibao.setJibie((String) p.get("jibie"));
				naibao.setDw((String) p.get("dw"));
				//输出
				nianbaos.add(naibao);
				System.out.println(naibao.getDw());
			}
		}
		request.setAttribute("products", nianbaos);
		return "/jsp/list.jsp";
	}
	//查询所有商品信息
		public String findAllProducts(HttpServletRequest request,HttpServletResponse response) throws Exception {
		//创建业务层对象
		ProductService productService = new ProductService();
		//调用方法获取所有商品信息
		DBCursor cur = productService.findAllProducts();
		List<nianbao>nianbaos= new ArrayList<nianbao>();
		//根据cur判断数据库中是否有数据
		if (cur.size()==0) {
			request.setAttribute("msg", "没有产品");
		}else {
			//有数据 /获取cur游标中的数据
			while (cur.hasNext()) 
			{
				nianbao naibao = new nianbao();
				//获取商品 获取每一行
				DBObject p = cur.next();
				
				naibao.setPtbh((String) p.get("ptbh"));
				naibao.setJibie((String) p.get("jibie"));
				naibao.setDw((String) p.get("dw"));
				//输出
				nianbaos.add(naibao);
				System.out.println(naibao.getDw());
			}
		}
		request.setAttribute("products", nianbaos);
		return "/jsp/list.jsp";
	}
}
