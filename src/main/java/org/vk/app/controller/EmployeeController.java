package org.vk.app.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeController {


    @GetMapping("/")
    public String welcome(){
        return "<h4> Welcome to Employee Register application <h4>";
    }
}
