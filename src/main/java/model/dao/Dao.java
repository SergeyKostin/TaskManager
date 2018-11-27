package model.dao;

import model.entity.TaskEntity;
import model.entity.UserEntity;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import java.util.List;

@Stateless
public class Dao {

    public EntityManager entityManager = Persistence.createEntityManagerFactory("task_manager").createEntityManager();

    public List<UserEntity> findAllUser() {
        return entityManager.createQuery("SELECT user FROM UserEntity user").getResultList();
    }

    public List<TaskEntity> findAllTask() {
        return entityManager.createQuery("SELECT task FROM TaskEntity task").getResultList();
    }

    public UserEntity findUserByName(String name) {
        entityManager.getTransaction().begin();
        UserEntity userEntity = (UserEntity) entityManager.createQuery("from UserEntity where name=:name")
                .setParameter("name", name).getSingleResult();
        entityManager.getTransaction().commit();
        return userEntity;
    }

    public void saveUser(String name, String login, String passeord) {
        UserEntity userEntity = new UserEntity();
        userEntity.setName(name);
        userEntity.setLogin(login);
        userEntity.setPassword(passeord);
        entityManager.getTransaction().begin();
        entityManager.persist(userEntity);
        entityManager.getTransaction().commit();
    }

    public void saveTask(TaskEntity taskEntity) {
        entityManager.getTransaction().begin();
        entityManager.persist(taskEntity);
        entityManager.getTransaction().commit();
    }

}
