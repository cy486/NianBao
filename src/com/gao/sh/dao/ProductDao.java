package com.gao.sh.dao;

import com.gao.sh.domain.nianbao;
import com.gao.sh.utils.MongoDBUtils;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class ProductDao {
//查询所有商品信息
	public DBCursor findAllProducts() throws Exception{
		//获取连接
		DB db = MongoDBUtils.getDB("itcast");
		//根据连接获取对应的数据集
		DBCollection coll = db.getCollection("nianbao");
		//使用coll获取数据
		DBCursor cour = coll.find();
		return cour;
		
	}

	public DBCursor findProductsByPid(String pid) throws Exception {
		// 获取商品信息
		DB db = MongoDBUtils.getDB("itcast");
		DBCollection coll = db.getCollection("nianbao");
		DBObject basicDBObject = new BasicDBObject();
		//将pid添加到basicBD中
		basicDBObject.put("jibie", pid);
		DBCursor cur = coll.find(basicDBObject);
		//将basicObjectde作为参数到数据库汇总查询上新品呢
		return cur;
	}
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
//添加商品
	public void addProduct(nianbao nianbao) {
		//获取集合链接
		 DBCollection coll = MongoDBUtils.getCollection("itcast", "nianbao");
		 //创建对象
		 DBObject db = new BasicDBObject();
		 //添加
		 db.put("pxmc", nianbao.getPxmc());
		 db.put("ptbh", nianbao.getPtbh());
		 db.put("ptny", nianbao.getPtny());
		 db.put("pzwh",nianbao.getPzwh() );
		 db.put("ly",nianbao.getLy() );
		 db.put("jibie", nianbao.getJibie());
		 db.put("szxs", nianbao.getSzxs());
		 db.put("hy",nianbao.getHy() );
		 db.put("dw", nianbao.getDw());
		 db.put("dm",nianbao.getDm() );
		 
		 db.put("xm", nianbao.getXm());
		 db.put("dh", nianbao.getDh());
		 db.put("yzxm",nianbao.getYzxm() );
		 db.put("yzxb", nianbao.getYzxb());
		 db.put("xsny", nianbao.getXsny());
		 db.put("zc", nianbao.getZc());
		 
		 //使用集合连接插入数据
		 coll.insert(db);
	}
//根据商品id删除产品
	public void deleteProductByPid(String pid) {
		DBCollection coll = MongoDBUtils.getCollection("itcast", "nianbao");
		DBObject basicDBObject = new BasicDBObject();
		//将pid添加到basicBD中
		basicDBObject.put("ptbh", pid);
		coll.remove(basicDBObject);
	}
//删除所有商品
	public void deleteAllProducts() {
		// TODO Auto-generated method stub
		DBCollection coll = MongoDBUtils.getCollection("itcast", "nianbao");
		DBCursor cour = coll.find();
		while(cour.hasNext())
		{
			coll.remove(cour.next());
		}
	}
	 

}
