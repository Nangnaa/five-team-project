package com.springboot.fiveteam.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.springboot.fiveteam.model.dto.CartDto;

public class CartDaoImpl implements CartDao{
	//MyBatis를 호출하므로 sqlsession에 의존성을 주입해야한다
	
	SqlSession sqlSession;
	
	@Override
    public List<CartDto> cartMoney() {
        // TODO Auto-generated method stub
        return null;
    }
    //장바구니에 담기
    @Override
    public void insert(CartDto dto) {
    //dto에 저장된 값을 받아서 sql세션에 저장하고 cart.insert로 넘어감 mapper로.
        sqlSession.insert("cart.insert", dto); 
    }
 
    @Override
    public List<CartDto> listCart(String userid) {
        return sqlSession.selectList("cart.listCart", userid);
    }
 
    @Override
    public void delete(int cart_id) {
        sqlSession.delete("cart.delete", cart_id);
    }
 
    @Override
    public void deleteAll(String userid) {
        sqlSession.delete("cart.deleteAll", userid);
    }
 
    @Override
    public void update(int cart_id) {
        // TODO Auto-generated method stub
 
    }
 
    @Override
    public int sumMoney(String userid) {
        return sqlSession.selectOne("cart.sumMoney", userid); 
    }
 
    @Override
    public int countCart(String userid, int product_id) {
        // TODO Auto-generated method stub
        return 0;
    }
 
    @Override
    public void updateCart(CartDto dto) {
        // TODO Auto-generated method stub
 
    }
 
    @Override
    public void modifyCart(CartDto dto) {
        sqlSession.update("cart.modify", dto);
    }
 
}
 
