/**
 * 
 */
package org.young.carey.test;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.young.carey.daoFactory.DAOFactory;
import org.young.carey.entiy.Emp;

/**
 * @author carey.yang
 *
 */
public class TestDao {

	/**
	 * @throws java.lang.Exception
	 */
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		Emp emp = null;
		for (int i = 0; i < 5; i++) {
			emp = new Emp();
			emp.setEmpno(i);
			emp.setEname("cy-" + i);
			emp.setJob("stu-" + i);
			emp.setHireDate(new java.util.Date());
			emp.setSal(500 * i);
			try {
				DAOFactory.getInstance().doCreate(emp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println("ok...");
	}

}
