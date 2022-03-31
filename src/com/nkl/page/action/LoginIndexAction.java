package com.nkl.page.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nkl.admin.manager.AdminManager;
import com.nkl.admin.manager.LoginManager;
import com.nkl.page.domain.Tbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nkl.common.util.JSONData;
import com.nkl.page.domain.User;
import com.nkl.page.manager.LoginIndexManager;


@Controller
public class LoginIndexAction {
    @Autowired
    LoginManager loginManager;

    @Autowired
    LoginIndexManager loginIndexManager;

    @Autowired
    AdminManager adminManager;

    /**
     * @return String
     * @Title: InSystem
     * @Description: 用户登录
     */
    @RequestMapping(value = "LoginInSystem.action", method = RequestMethod.POST)
    @ResponseBody
    public JSONData InSystem(User params,
                             ModelMap model, HttpServletRequest request, HttpServletResponse response, HttpSession httpSession) {
        JSONData jsonData = new JSONData();
        try {
            //用户登录查询
            if (loginManager.getUserType(params) == 3 || loginManager.getUserType(params) == 1) {
                params.setUser_type(loginManager.getUserType(params));
            } else {
                params.setUser_type(1);
            }
            User user = loginIndexManager.getUser(params);
            if (user != null) {
                if (user.getUser_kind() == 2 && user.getLeftDays() == 0) {
                    user.setUser_kind(1);
                    loginIndexManager.updateUser(user);
                }
                httpSession.setAttribute("userFront", user);
                jsonData.setResult("nick_name", user.getNick_name());
                jsonData.setResult("left_days", user.getLeftDays());

            } else {
                jsonData.setErrorReason("用户名或密码错误");
                return jsonData;
            }

        } catch (Exception e) {
            e.printStackTrace();
            jsonData.setErrorReason("登录异常，请稍后重试");
            return jsonData;
        }

        return jsonData;
    }

    /**
     * @return String
     * @Title: OutSystem
     * @Description: 退出登录
     */
    @RequestMapping(value = "LoginOutSystem.action")
    @ResponseBody
    public JSONData OutSystem(HttpSession httpSession) {
        JSONData jsonData = new JSONData();
        try {
            //用户查询
            User user = (User) httpSession.getAttribute("userFront");
            if (user != null) {
                //退出登录
                httpSession.removeAttribute("userFront");
                httpSession.invalidate();
            }

        } catch (Exception e) {
            jsonData.setErrorReason("退出异常，请稍后重试");
            return jsonData;
        }

        return jsonData;
    }

    /**
     * @return String
     * @Title: RegSystem
     * @Description: 用户注册
     */
    @RequestMapping(value = "LoginRegSystem.action", method = RequestMethod.POST)
    @ResponseBody
    public JSONData RegSystem(User params,
                              ModelMap model, HttpServletRequest request, HttpServletResponse response, HttpSession httpSession) {
        JSONData jsonData = new JSONData();
        try {
            //验证码验证
            String random = (String) httpSession.getAttribute("random");
            if (!random.equals(params.getRandom())) {
                jsonData.setErrorReason("验证码错误");
                return jsonData;
            }

            //查询用户名是否被占用
            User user = new User();
            user.setUser_name(params.getUser_name());
            User user_temp = loginIndexManager.getUser(user);
            if (user_temp != null) {
                jsonData.setErrorReason("注册失败，用户名已被注册：" + params.getUser_name());
                return jsonData;
            }

            //添加用户入库
            loginIndexManager.addUser(params);

        } catch (Exception e) {
            jsonData.setErrorReason("注册异常，请稍后重试");
            return jsonData;
        }

        return jsonData;
    }

    /**
     * @return String
     * @Title: InSystem
     * @Description: 用户购买章节
     */
    @RequestMapping(value = "BuyBookSystem.action", method = RequestMethod.POST)
    @ResponseBody
    public JSONData BuySystem(User params,
                              ModelMap model, HttpServletRequest request, HttpServletResponse response, HttpSession httpSession) {
        JSONData jsonData = new JSONData();
        User user =loginManager.getUser(params);

        try {
            adminManager.updateBuyBook(user);
            user.setBuy_book(1);
            user.setUser_money(user.getUser_money()-20.0);
            loginIndexManager.updateUser(user);

            httpSession.setAttribute("userFront", user);
            return jsonData;
        } catch (Exception e) {
            jsonData.setErrorReason("购买异常");
            return jsonData;
        }
    }

    @RequestMapping(value = "BuyBookMoneySystem.action", method = RequestMethod.POST)
    @ResponseBody
    public JSONData BuySystemMoney(Tbook tbookparams,
                              ModelMap model, HttpServletRequest request, HttpServletResponse response, HttpSession httpSession) {
        JSONData jsonData = new JSONData();
        System.out.println("======tbookid====||||||=="+tbookparams.getTbook_id());
        Tbook tbook = adminManager.queryTbook(tbookparams);
//        tbook.setTbook_money(tbook.getTbook_money()+20.0);
        System.out.println("-----tbookmoney---|----"+tbook.getTbook_money());
        adminManager.updateTbookMoney(tbook);
        System.out.println("-----tbookmoney2---|----"+tbook.getTbook_money());
        return  jsonData;
    }
}
