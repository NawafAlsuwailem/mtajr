package com.mtajr.controller;


import com.mtajr.entity.Store;
import com.mtajr.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private StoreService storeService;

    @GetMapping("/list")
    public String listStores(Model model){
        List<Store> stores = storeService.getStores();
        model.addAttribute("stores", stores);

        return "admin/list-store";
    }

    @GetMapping("/loadImage")
    public void loadImage(@RequestParam("id") int id, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        byte[] image = storeService.loadImage(id);
        httpServletResponse.setContentType("image/jpeg");

        ServletOutputStream servletOutputStream = httpServletResponse.getOutputStream();
        servletOutputStream.write(image);
        servletOutputStream.close();
    }

    @GetMapping("/add")
    public String addStore(Model model){
        Store store = new Store();
        model.addAttribute("store", store);
        return "admin/store-form";
    }

    @GetMapping("/delete")
    public String deleteStore(@RequestParam("id") int id){
        storeService.deleteStore(id);
        return "redirect: /admin/list";
    }

    @PostMapping("/saveStore")
    public String saveStore(@ModelAttribute("store") Store store,
                            BindingResult result,
                            @RequestParam("file") MultipartFile file) throws IOException {
        byte[] bFile = null;
        try {
            bFile = storeService.loadImage(store.getId());
        } catch (NullPointerException e){
        }
        if (!file.isEmpty()) {
            bFile = new byte[(int) file.getSize()];
            bFile = file.getBytes();
        }
        store.setImage(bFile);

        storeService.saveStore(store);
        return "redirect: /admin/list";
    }

    @GetMapping("/update")
    public String showFormForUpdate(@RequestParam("id") int id,
                                    Model model) {
        Store store = storeService.getStore(id);
        model.addAttribute("store", store);
        return "admin/store-form";
    }

    @GetMapping("/login")
    public String login(){
        return "admin/login-form";
    }
}
