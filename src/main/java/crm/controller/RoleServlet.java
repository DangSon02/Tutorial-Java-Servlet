package crm.controller;

import crm.common.Constant;
import crm.payload.ResponseData;
import crm.service.RoleService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "roleServlet", urlPatterns = {Constant.URL_ROLE,Constant.URL_ROLE_ADD})
public class RoleServlet extends HttpServlet {

    private RoleService roleService = new RoleService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String urlPath = req.getServletPath();

        switch (urlPath){
            case Constant.URL_ROLE:
                getAllRoles(req,resp);
                break;
            case Constant.URL_ROLE_ADD:
                addRole(req,resp);
                break;
        }
    }

    private void getAllRoles(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("roles", roleService.getRoles());

        req.getRequestDispatcher("/role.jsp").forward(req,resp);
    }

    private void addRole(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/role-add.jsp").forward(req,resp);
    }


}
