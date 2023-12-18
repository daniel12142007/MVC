package it.controller;

import it.model.User;
import it.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    private final UserRepository userRepository;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/")
    public String findAll(Model model) {
        model.addAttribute("find", userRepository.findAll());
        return "menu";
    }

    @GetMapping("form")
    public String form() {
        return "saveForm";
    }

    @PostMapping("save")
    public String save(
            @RequestParam("name") String name,
            @RequestParam("age") int age
    ) {
        User user = new User();
        user.setName(name);
        user.setAge(age);
        userRepository.save(user);
        return "redirect:/";
    }

    @GetMapping("find/by/{id}")
    public String findById(
            @PathVariable Long id,
            Model model
    ) {
        model.addAttribute("e", userRepository.findById(id));
        return "find";
    }

    @GetMapping("update/form/{id}")
    public String updateForm(
            @PathVariable Long id,
            Model model
    ) {
        User user = userRepository.findById(id);
        model.addAttribute("key", user);
        return "formUpdate";
    }

    @PostMapping("update/{id}")
    public String update(
            @PathVariable Long id,
            @RequestParam String name,
            @RequestParam int age
    ) {
        User user = userRepository.findById(id);
        user.setName(name);
        user.setAge(age);
        userRepository.update(user, id);
        return "redirect:/";
    }

    @GetMapping("delete/{id}")
    public String deleteById(@PathVariable Long id) {
        userRepository.deleteById(id);
        return "redirect:/";
    }
}