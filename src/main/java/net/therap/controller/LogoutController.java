package net.therap.controller;

import net.therap.command.Login;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by IntelliJ IDEA.
 * User: pritom
 * Date: 6/11/12
 * Time: 12:33 PM
 * To change this template use File | Settings | File Templates.
 */
public class LogoutController implements Controller{

    public ModelAndView handleRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        HttpSession session = httpServletRequest.getSession();


        session.removeAttribute("User");

        //session.invalidate();


         ModelMap modelMap = new ModelMap();

        modelMap.addAttribute("message","You have loggged out");


        return new ModelAndView("Success", modelMap);



    }
}
