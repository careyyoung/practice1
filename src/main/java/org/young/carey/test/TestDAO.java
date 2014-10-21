package org.young.carey.test;

import org.young.carey.daoFactory.DAOFactory;
import org.young.carey.entiy.Emp;

public class TestDAO {
	public static void main(String args[]) throws Exception {
		Emp emp = null;
		for (int i = 0; i < 5; i++) {
			emp = new Emp();
			emp.setEmpno(i);
			emp.setEname("cy-" + i);
			emp.setJob("stu-" + i);
			emp.setHireDate(new java.util.Date());
			emp.setSal(500 * i);
			DAOFactory.getInstance().doCreate(emp);
		}
		System.out.println("ok……");
	}
}
