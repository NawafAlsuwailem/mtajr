package com.mtajr.dao;

import com.mtajr.entity.Store;

import java.util.List;

public interface StoreDAO{
    List<Store> getStores();

    void saveStore(Store store);

    Store getStore(int id);

    void deleteStore(int id);

    byte[] loadImage(int id);
}
