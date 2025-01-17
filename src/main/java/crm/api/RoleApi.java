package crm.api;

import com.google.gson.Gson;
import crm.common.Constant;
import crm.payload.ResponseData;
import crm.service.RoleService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "roleApi", urlPatterns = {Constant.URL_ROLE_API_DELETE, Constant.URL_ROLE_API_ADD})
public class RoleApi extends HttpServlet {
    private RoleService roleService = new RoleService();
    private Gson gson = new Gson();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String urlPath = req.getServletPath();



        switch (urlPath){
            case Constant.URL_ROLE_API_DELETE:
                      deleteRoles(req,resp);
                break;
            case  Constant.URL_ROLE_API_ADD:
                   addRole(req,resp);
                break;
        }
    }


    private void addRole(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String roleName = req.getParameter("name");
        String desc = req.getParameter("desc");

        boolean isSucess = roleService.addRole(roleName,desc);

        ResponseData responseData = new ResponseData();
        responseData.setSuccess(isSucess);
        responseData.setDescription("");
        responseData.setData("");

        String json = gson.toJson(responseData);

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter printWriter = resp.getWriter();
        printWriter.print(json);
        printWriter.flush();

    }

    private void deleteRoles (HttpServletRequest req, HttpServletResponse resp) throws IOException {

        int id = Integer.parseInt(req.getParameter("id"));

                boolean isSucess = roleService.deleteRoleById(id);

                ResponseData responseData = new ResponseData();
                responseData.setSuccess(isSucess);
                responseData.setDescription("");
                responseData.setData("");

                String json = gson.toJson(responseData);

                resp.setContentType("application/json");
                resp.setCharacterEncoding("UTF-8");
                PrintWriter printWriter = resp.getWriter();
                printWriter.print(json);
                printWriter.flush();
    }


}
