package ua.com.ushop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.com.ushop.entity.User;
import ua.com.ushop.service.UserService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin/")
public class AdminUserCont {
    @Autowired
    UserService userService;

    @GetMapping("listUsers")
    public String listUsers(Model model) {
        List<User> users = userService.findAllUsers();
        model.addAttribute("usersAll", users);
        return "listUsers";
    }

    @GetMapping("/delete-{id}")
    public String deleteUsers(@PathVariable int id) {
        userService.deleteById(id);
        return "redirect:listUsers";
    }

    @GetMapping("/edit-{id}")
    public String editUser(@PathVariable int id,
                           Model model) {


        User user = userService.findById(id);
        model.addAttribute("editUser", user);
        model.addAttribute("edit", true);

        return "editUsers";
    }

    @PostMapping("/edit-{id}")
    public String updateUsers(@Valid User user, BindingResult result,
                              ModelMap model, @PathVariable int id) {

        if (result.hasErrors()) {
            return "editUsers";
        }

        userService.update(user);


        model.addAttribute("success", "all ok");
        return "redirect:listUsers";
    }
}
