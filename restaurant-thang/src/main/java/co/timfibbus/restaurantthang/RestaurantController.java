package co.timfibbus.restaurantthang;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RestaurantController {
	
	@Autowired
	ReviewDao revDao;
	
	
	@RequestMapping("/")
	public String index(Model model){
		List<Reviews> hotels = revDao.findAll();
		model.addAttribute("hotels", hotels);	
		return "index";
	}
	@RequestMapping("/rate/{id}")
	public String indecks(@PathVariable("id") Long id) {
		Reviews hotel = revDao.findById(id).orElse(null);
		int i = hotel.getRating();
		i++;
		hotel.setRating(i);
		revDao.save(hotel);
		return "redirect:/";
	}
	
	
	
	
}
