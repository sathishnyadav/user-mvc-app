package org.jsp.usermvcapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.jsp.usermvcapp.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	@Autowired
	private EntityManager entityManager;

	public User saveUser(User user) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(user);
		entityTransaction.commit();
		return user;
	}

	public User updateUser(User user) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.merge(user);
		entityTransaction.commit();
		return user;
	}

	public User getUser(int id) {
		return entityManager.find(User.class, id);
	}

	public boolean deleteUser(int id) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		User user = entityManager.find(User.class, id);
		if (user != null) {
			entityTransaction.begin();
			entityManager.remove(user);
			entityTransaction.commit();
			return true;
		}
		return false;
	}

	public User verifyUser(long phone, String password) {
		Query query = entityManager.createQuery("select u from User u where u.phone=?1 and u.password=?2");
		query.setParameter(1, phone);
		query.setParameter(2, password);
		List<User> users = query.getResultList();
		if (users.size() > 0)
			return users.get(0);
		return null;
	}

	public List<User> getAllUsers() {
		Query query = entityManager.createQuery("select u from User u");
		List<User> users = query.getResultList();
		return users;
	}
}
