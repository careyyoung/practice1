package org.young.carey.dao;

import java.util.List;

import org.young.carey.entiy.Emp;

public interface IEmpDAO {
	public boolean doCreate(Emp emp) throws Exception;

	public List<Emp> findAll() throws Exception;

	public Emp findById(int empno) throws Exception;
}
