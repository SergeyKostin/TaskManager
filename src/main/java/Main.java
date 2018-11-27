import model.dao.Dao;
import model.entity.TaskEntity;
import model.entity.UserEntity;

import java.util.List;

public class Main {

    public static void main(String[] args) {

        Dao dao = new Dao();
        List<UserEntity> users = dao.findAllUser();
        for(UserEntity user : users) {
            System.out.println(user.getName());
        }
        List<TaskEntity> tasks = dao.findAllTask();
        for(TaskEntity taskEntity : tasks) {
            System.out.println(taskEntity.getDescription());
        }
    }
}
