package org.assessment.dao;


import java.util.List;

import org.assessment.models.CartInUse;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class cartInUseDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sf){ this.sessionFactory =sf;}

    @Transactional
    public CartInUse addCart(CartInUse cartInUse) {
        this.sessionFactory.getCurrentSession().save(cartInUse);
        return cartInUse;
    }

    @Transactional
    public List<CartInUse> getCarts() {
        return this.sessionFactory.getCurrentSession().createQuery("from CART").list();
    }

    @Transactional
    public void updateCart(CartInUse cartInUse) {
        this.sessionFactory.getCurrentSession().update(cartInUse);
    }

    @Transactional
    public void deleteCart(CartInUse cartInUse) {
        this.sessionFactory.getCurrentSession().delete(cartInUse);
    }
}
