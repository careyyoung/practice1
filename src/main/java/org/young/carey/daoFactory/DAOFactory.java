package org.young.carey.daoFactory;

import org.young.carey.dao.IEmpDAO;
import org.young.carey.daoProxy.EmpDAOProxy;

public class DAOFactory {
	public static IEmpDAO getInstance() {
		IEmpDAO dao = null;
		try {
			dao = new EmpDAOProxy();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dao;
	}
}
