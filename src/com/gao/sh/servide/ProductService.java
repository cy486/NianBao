package com.gao.sh.servide;

import com.gao.sh.dao.ProductDao;
import com.gao.sh.domain.Product;
import com.gao.sh.domain.nianbao;
import com.mongodb.DBCursor;

public class ProductService {
	ProductDao dao = new ProductDao();
	public DBCursor findAllProducts() throws Exception {
		return dao.findAllProducts();
	}

	public DBCursor findProductsByPid(String pid)throws Exception  {
		return dao.findProductsByPid(pid);
		
	}
//添加商品
	public void addProduct(nianbao nianbao) {
		dao.addProduct(nianbao);
	}
//根据编号删除商品
	public void deleteProductByPid(String pid) {
		dao.deleteProductByPid(pid);
	}

	public void deleteAllProducts() {
		dao.deleteAllProducts();
	}
}
