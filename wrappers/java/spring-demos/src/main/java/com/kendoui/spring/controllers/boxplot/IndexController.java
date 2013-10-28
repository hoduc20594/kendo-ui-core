package com.kendoui.spring.controllers.boxplot;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kendoui.spring.models.ChartDataRepository;


@Controller("dataviz-box_plot_charts-home-controller")
@RequestMapping(value="/dataviz/box-plot-charts/")
public class IndexController {
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {   
        model.addAttribute("monthlyMeanTemperatures", ChartDataRepository.MonthlyMeanTemperatures());
        return "/dataviz/box-plot-charts/index";
    }
}
