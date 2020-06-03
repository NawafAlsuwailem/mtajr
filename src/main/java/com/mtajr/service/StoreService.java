package com.mtajr.service;

import com.mtajr.entity.Store;
import org.springframework.stereotype.Service;

import java.util.List;


public interface StoreService {
    List<Store> getStores();

    void saveStore(Store store);

    Store getStore(int id);

    void deleteStore(int id);

    byte[] loadImage(int id);

}
