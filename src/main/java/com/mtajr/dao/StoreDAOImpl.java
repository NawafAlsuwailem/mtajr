package com.mtajr.dao;

import com.mtajr.entity.Store;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StoreDAOImpl implements StoreDAO {

    @Autowired
    public SessionFactory sessionFactory;

    @Override
    public List<Store> getStores() {
        Session currentSession = this.sessionFactory.getCurrentSession();
        Query<Store> query = currentSession.createQuery("from Store", Store.class);
        List<Store> stores = query.getResultList();
        return stores;
    }

    @Override
    public void saveStore(Store store) {
        Session currentSession = this.sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(store);
    }

    @Override
    public Store getStore(int id) {
        Session currentSession = this.sessionFactory.getCurrentSession();
        Store store = currentSession.get(Store.class, id);
        return store;
    }

    @Override
    public void deleteStore(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Store store = getStore(id);
        currentSession.delete(store);
    }

    public byte[] loadImage(int id){
        Session currentSession = sessionFactory.getCurrentSession();
        byte[] image = currentSession.find(Store.class, id).getImage();
        return image;
    }
}
