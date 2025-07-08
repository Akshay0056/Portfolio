package in.Akshay.Portfolio.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping({"/", "/home"})
    public String showHomepage() {
        return "home";
    }

    @GetMapping("about")
    public String showAboutPage() {
        return "sections/about";
    }

    @GetMapping("projects")
    public String showProjectsPage() {
        return "sections/projects";
    }
    @GetMapping("skills")
    public String showSkillsPage() {
        return "sections/skills";
    }
    @GetMapping("contact")
    public String showContactPage() {
        return "sections/contact";
    }
}
