package com.mtajr.controller;

import com.mtajr.entity.Store;
import com.mtajr.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller()
@RequestMapping("/store")
public class StoreController {

    @Autowired
    private StoreService storeService;

    @GetMapping("/category")
    public String getCategory(){
        return "public/category-list";
    }

    @GetMapping("/tools")
    public String getTools(Model model){
        List<Store> tool_stores = new ArrayList<Store>();

        List<Store> stores = storeService.getStores();
        for (Store store: stores){
            if (store.getType().equals("tools")) {
                tool_stores.add(store);
            }
        }

        model.addAttribute("tool_stores", tool_stores);

        return "public/tool-list";
    }

    @GetMapping("/loadImage")
    public void loadImage(@RequestParam("id") int id, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        byte[] image = storeService.loadImage(id);
        httpServletResponse.setContentType("image/jpeg");

        ServletOutputStream servletOutputStream = httpServletResponse.getOutputStream();
        servletOutputStream.write(image);
        servletOutputStream.close();
    }



    @GetMapping("/roasters")
    public String getRoasters(Model model){

        List<Store> tool_stores = new ArrayList<Store>();

        List<Store> stores = storeService.getStores();
        for (Store store: stores){
            if (store.getType().equals("roaster")) {
                tool_stores.add(store);
            }
        }

        model.addAttribute("roaster_stores", tool_stores);

        return "public/roaster-list";
    }
}
