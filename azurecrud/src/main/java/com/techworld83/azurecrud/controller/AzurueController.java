package com.techworld83.azurecrud.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "api/v1/test")
public class AzurueController{

    @GetMapping
    public String isAvailable(){
        return "Am available";
    }
    
}