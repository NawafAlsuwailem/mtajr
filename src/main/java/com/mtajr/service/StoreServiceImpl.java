package com.mtajr.service;

import com.mtajr.dao.StoreDAO;
import com.mtajr.entity.Store;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class StoreServiceImpl implements StoreService {

    @Autowired
    private StoreDAO storeDAO;


    @Override
    @Transactional
    public List<Store> getStores() {
        return storeDAO.getStores();
    }

    @Override
    @Transactional
    public void saveStore(Store store) {
        storeDAO.saveStore(store);
    }

    @Override
    @Transactional
    public Store getStore(int id) {
        return storeDAO.getStore(id);
    }

    @Override
    @Transactional
    public void deleteStore(int id) {
        storeDAO.deleteStore(id);
    }

    @Override
    @Transactional
    public byte[] loadImage(int id){
        return storeDAO.loadImage(id);
    }

}
