package controller;

import model.dao.Dao;
import model.entity.TaskEntity;
import model.entity.UserEntity;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CreateTask extends HttpServlet {

    @EJB
    private Dao dao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<UserEntity> users = dao.findAllUser();
        req.setAttribute("users",users);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/create_task.jsp");
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String summary = req.getParameter("summary");
        String priority = req.getParameter("priority");
        String user_name = req.getParameter("user_name");
        String description = req.getParameter("description");
        UserEntity user = new UserEntity();
        if(user_name.length()>0) {
            user = dao.findUserByName(user_name);
        }
        TaskEntity task = new TaskEntity();
        task.setUser(user);
        task.setDescription(description);
        task.setPriority(priority);
        task.setSummary(summary);
        dao.saveTask(task);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/create_task.jsp");
        requestDispatcher.forward(req, resp);
    }
}
