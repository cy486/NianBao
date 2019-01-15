package com.gao.sh.utils;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;
import com.mongodb.MongoClient;

public class MongoDBUtils {
//1.使用connection用来保存Mongo的数据库连接对象
	static Mongo connection = null;
	//2.使用db接收数据信息
    static DB db =null;
    static DBCollection coll = null;
    
    @SuppressWarnings("deprecation")
	public static DB getDB(String dbname) throws Exception{
    	connection = new MongoClient("211.159.146.252",27017);	
    	db = connection.getDB(dbname);
		return db;
    }
	@SuppressWarnings("deprecation")
	public static DBCollection getCollection(String dbname,String collname){
		connection = new MongoClient("211.159.146.252",27017);	
    	db = connection.getDB(dbname);
    	coll = db.getCollection(collname);
		return coll;
	}
	
	
}
