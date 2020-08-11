package com.MaikeDun.dao;

import java.util.List;

import com.MaikeDun.bean.Staffs;
import com.MaikeDun.bean.UpdateStaff;

public interface StaffsDao {
public List<Staffs> selectStaff();
public int addStaff(Staffs staff);
public List<Staffs> selectStaffById(int id);
public void updateStaff(UpdateStaff us);
public void updateStaffPhoto(Staffs staff);
public int deleteStaff(int id);
}
