package group.faf.bookstore.model.staff;

import java.util.List;

public interface StaffDAO {

	/**
	 * 
	 * @param Staff
	 */
	void addStaff(int Staff);

	/**
	 * 
	 * @param Staff
	 * @param parameter
	 */
	void updateStaff(int Staff, int parameter);

	/**
	 * 
	 * @param String
	 */
	List<Staff> getListStaff(int String);

}