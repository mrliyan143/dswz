package com.nkl.admin.manager;

import java.util.List;

import com.nkl.common.util.StringUtil;
import com.nkl.common.util.Transcode;
import com.nkl.page.dao.ITbookDao;
import com.nkl.page.domain.Tbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nkl.page.dao.IUserDao;
import com.nkl.page.domain.User;

@Service
public class LoginManager {

	@Autowired
	IUserDao userDao;
	ITbookDao tbookDao;
	
	/**
	 * @Title: listUsers
	 * @Description: 查询用户集合
	 * @param user
	 * @return List<Picnews>
	 */
	public List<User> listUsers(User user){
		
		
		List<User> users = userDao.listUsers(user);
		
		
		return users;
	}

	public Tbook queryTbook(Tbook tbook) {

		Tbook _tbook = tbookDao.getTbook(tbook);

		return _tbook;
	}

	public void updateTbookMoney(Tbook tbook){
		tbookDao.updateTbookMoney(tbook);

	}

	public void updateTbook(Tbook tbook) {

		if (!StringUtil.isEmptyString(tbook.getTbook_desc())) {
			tbook.setTbook_desc(Transcode.htmlEncode(tbook.getTbook_desc()));
		}
		tbookDao.updateTbook(tbook);

	}


	/**
	 * @Title: getUser
	 * @Description: 查询用户
	 * @param user
	 * @return User
	 */
	public User getUser(User user){
		
		//user.setUser_pass(Md5.makeMd5(user.getUser_pass()));
		User _user = userDao.getUser(user);

		return _user;
	}

	/**
	 * @Title: getUser
	 * @Description: 查询用户类型
	 * @param user
	 * @return User
	 */

	public int getUserType(User user){
		int usertype = userDao.getUserType(user);
		return usertype;
	}

	/**
	 * @Title: getUser
	 * @Description: 查询用户是否购买章节
	 * @param user
	 * @return User
	 */

	public int getBuyBook(User user){
		int buybook = userDao.getBuyBook(user);
		return buybook;
	}
	
}
