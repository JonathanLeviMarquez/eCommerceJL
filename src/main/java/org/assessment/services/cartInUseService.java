package org.assessment.services;


import org.assessment.dao.cartInUseDao;
import org.assessment.models.CartInUse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class cartInUseService {
    @Autowired
    private cartInUseDao cartInUseDao;

    public CartInUse addCart(CartInUse cartInUse)
    {
        return cartInUseDao.addCart(cartInUse);
    }

    public List<CartInUse> getCarts(){
        return this.cartInUseDao.getCarts();
    }

    public void updateCart(CartInUse cartInUse){
        cartInUseDao.updateCart(cartInUse);
    }
    public void deleteCart(CartInUse cartInUse)
    {
        cartInUseDao.deleteCart(cartInUse);
    }



}
