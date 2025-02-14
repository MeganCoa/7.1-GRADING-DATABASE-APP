package co.grandcircus71.GRADING.DATABASE.APP;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.grandcircus71.GRADING.DATABASE.APP.models.Grades;

@Controller
public class HomeController {

	@Autowired
	private GradesRepository repo;

	@RequestMapping("/")
	public String home(Model model) {
		List<Grades> grades = repo.findAll();
		model.addAttribute("grades", grades);
		return "index";
	}

	@RequestMapping("/delete")
	public String delete(@RequestParam String name, Model model) {
		for (Grades grade : repo.findAll()) {
			if (grade.getName().equalsIgnoreCase(name)) {
				repo.delete(grade);
			}
		}
		return "redirect:/";
	}
	
	@RequestMapping("/addGrade")
	public String addGrade() {  		
			return "addGrade";
		}

	@PostMapping("/gradeAdded")
	public String addGradeRepo(Model model,
			@ModelAttribute("name") String name,
			@ModelAttribute("type") String type,
			@ModelAttribute("score") Double score,
			@ModelAttribute("total") Double total) {
		
		model.addAttribute("name", name);
		model.addAttribute("type", type);
		model.addAttribute("score", score);
		model.addAttribute("total", total);
		
		repo.save(new Grades(name,type, score,total));
		
		return "/gradeAdded";
	}

}
