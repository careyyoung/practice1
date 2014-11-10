package org.young.carey.daoFactory;

import org.young.carey.dao.*;
import org.young.carey.daoImpl.LoginDaoImp;

public class DAOFactory1 {
	public static LoginDao getLoginDAOInstance()
	{
		return new LoginDaoImp() ;
	}   

}
