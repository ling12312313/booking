package com.crm.controller;

import com.common.utils.Page;
import com.crm.pojo.QueryVo;
import com.crm.pojo.User;
import com.crm.pojo.flight;
import com.crm.pojo.order_tickect;
import com.crm.service.BaseService;
import com.crm.service.CustomerService;
import com.crm.service.OrderService;
import com.crm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Iterator;
import java.util.List;

@Controller
public class CustomerController {
    @Autowired
    private UserService userService;
    @Autowired
    private BaseService baseService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private OrderService orderService;

//    忘记密码
    @RequestMapping(value = "/user/modifyPwd", method = RequestMethod.POST)
    public String modifyPwd(@RequestParam String currentPassword,
                            @RequestParam String newPassword,
                            @RequestParam String confirmPassword,
                            @RequestParam String telNumber) {
        // 查找用户ID
        int id = (int) userService.findUserId(telNumber);

        // 检查新密码和确认密码是否一致
        if (!newPassword.equals(confirmPassword)) {
            return "errorPage"; // 密码不一致，返回错误页面
        }

        // 修改密码
        userService.modifyPwd(newPassword, id);

        // 修改成功后重定向
        return "denglu";  // 重定向到用户个人信息页面
    }
//    个人信息
    @RequestMapping(value = "/customer/information")
    public String information(Model model,HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("USER_SESSION");
        if (user == null) {
            return "denglu";
        }
        model.addAttribute("user", user);
        return "information";
    }
//个人信息修改
    @RequestMapping(value = "/customer/updateInformation",method = RequestMethod.GET)
    public String update( @RequestParam("username") String username,
                          @RequestParam("email") String email,
                          @RequestParam("telnumber") String telnumber,
                          @RequestParam("idcard") String idcard,
                          HttpSession session,Model model) {
        // 从会话中获取当前登录用户
        User user = (User) session.getAttribute("USER_SESSION");

        if (user == null) {
            // 用户未登录转向到登录页面
            return "denglu";
        }
        // 更新用户信息
        user.setName(username);
        user.setEmail(email);
        user.setTelnumber(telnumber);
        user.setIdcard(idcard);

        // 调用服务层更新数据库中的用户信息
        userService.updateUser(user);

        // 更新会话中的用户信息
        session.setAttribute("USER_SESSION", user);
        // 添加提示信息
        model.addAttribute("successMessage", "信息修改成功！");
        // 重定向到信息展示页面
        return "redirect:/customer/information?success=true";
    }
    //管理员入口
    @RequestMapping(value = "/customer/list")
    public String list(QueryVo vo, Model model, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("USER_SESSION");
        if (user == null) {
            return "denglu";
        }
        List<flight> start = baseService.selectstart();
        List<flight> end = baseService.selectend();

        model.addAttribute("start", start);
        model.addAttribute("end", end);


//		String a=null;
//		if(vo.getTakeoff_time()!=null) {
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");
//		//	a= sdf.format(vo.getTakeoff_time());
//			a=vo.getTakeoff_time();
//			//vo.setTakeoff_time());
//			System.out.println(a);
//			Date date = sdf1.parse(a);
//			System.out.println(date);
        //通过3个条件 查询分页对象
        //}

        Page<flight> page = customerService.selectPageByQueryVo(vo);
//		Iterator<flight> it = page.getRows().iterator();
//		while (it.hasNext()) {
//			flight f =  it.next();
//			System.out.println(f.toString());
//		}
        model.addAttribute("page", page);
        model.addAttribute("takeoff_time", vo.getTakeoff_time());
        model.addAttribute("start_place", vo.getStart_place());
        model.addAttribute("end_place", vo.getEnd_place());


        return "customer";
    }

    //用户入口
    @RequestMapping(value = "/flight/list")
    public String flightlist(QueryVo vo, Model model, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("USER_SESSION");
        if (user == null){
            return "denglu";}
        List<flight> start = baseService.selectstart();
        List<flight> end = baseService.selectend();

        model.addAttribute("start", start);
        model.addAttribute("end", end);


        Page<flight> page = customerService.selectPageByQueryVo(vo);
//		Iterator<flight> it = page.getRows().iterator();
//		while (it.hasNext()) {
//			flight f =  it.next();
//			System.out.println(f.toString());
//		}
        model.addAttribute("page", page);
        model.addAttribute("takeoff_time", vo.getTakeoff_time());
        model.addAttribute("start_place", vo.getStart_place());
        model.addAttribute("end_place", vo.getEnd_place());

        return "order";
    }

    //flight指定查询
    @RequestMapping(value = "/customer/edit.action")
    public @ResponseBody
    flight edit(Integer id) {
        flight f = customerService.selectFlightById(id);
        //System.out.println("11"+f.toString());
        //System.out.println(f.getId());
        return f;
    }

    //修改保存
    @RequestMapping(value = "/customer/update.action")
    public @ResponseBody
    String update(flight flight) {
        //修改
        //System.out.println(flight.getDiscount());
        customerService.updateFlightById(flight);
        return "OK";
    }

    @RequestMapping(value = "/customer/insert.action")
    public @ResponseBody
    String insert(flight flight) {
        //插入

        customerService.insertFlight(flight);
        return "OK";
    }

    //删除
    @RequestMapping(value = "/customer/delete.action")
    public @ResponseBody
    String delete(Integer id) {
        //删除
        customerService.deleteFlightById(id);
        return "OK";
    }

    //存订单
    @RequestMapping(value = "/flight/insert.action")
    public @ResponseBody
    String flightInsert(order_tickect order_tickect, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("USER_SESSION");
//		order_tickect.setName(user.getName());
//		order_tickect.setIdcard(user.getIdcard());
//		order_tickect.setStatus("已付款");
        List<order_tickect> list = orderService.selectOrder(user.getName(), user.getIdcard());
        //System.out.println(order_tickect.toString());
        if (list != null) {
            Iterator<order_tickect> it = list.iterator();
            //System.out.println(11111);
            while (it.hasNext()) {
                order_tickect order = it.next();
                //System.out.println(order.toString());
                if (order.getTakeoff_time().equals(order_tickect.getTakeoff_time())
                        && order.getLand_time().equals(order_tickect.getLand_time())
                        && order.getIdcard().equals(user.getIdcard())) {
                    System.out.println("重复");
                    return "error";
                }
            }
        }

        if (order_tickect.getNum() != 0) {
            orderService.insertOrder(order_tickect, user);

            orderService.updateNumber(order_tickect.getId(), order_tickect.getTickect_type());
        }

        return "OK";
    }

    //浏览管理员订单
    @RequestMapping(value = "/customer/orderList")
    public String customerOrderlist(QueryVo vo, Model model, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("USER_SESSION");
        if (user == null) {
            return "denglu";
        }
        List<flight> start = baseService.selectstart();
        List<flight> end = baseService.selectend();

        model.addAttribute("start", start);
        model.addAttribute("end", end);


        Page<order_tickect> page = orderService.selectOrderPageByQueryVo(vo, null, null);

        model.addAttribute("page", page);
        model.addAttribute("takeoff_time", vo.getTakeoff_time());
        model.addAttribute("start_place", vo.getStart_place());
        model.addAttribute("end_place", vo.getEnd_place());

        return "customerOrderList";
    }

    //浏览订单
    @RequestMapping(value = "/order/list")
    public String orderlist(QueryVo vo, Model model, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("USER_SESSION");
        if (user == null) {
            return "denglu";
        }
        List<flight> start = baseService.selectstart();
        List<flight> end = baseService.selectend();

        model.addAttribute("start", start);
        model.addAttribute("end", end);


        Page<order_tickect> page = orderService.selectOrderPageByQueryVo(vo, user.getName(), user.getIdcard());
//		Iterator<flight> it = page.getRows().iterator();
//		while (it.hasNext()) {
//			flight f =  it.next();
//			System.out.println(f.toString());
//		}
        model.addAttribute("page", page);
        model.addAttribute("takeoff_time", vo.getTakeoff_time());
        model.addAttribute("start_place", vo.getStart_place());
        model.addAttribute("end_place", vo.getEnd_place());

        return "orderlist";
    }

    //order指定查询
    @RequestMapping(value = "/order/edit.action")
    public @ResponseBody
    order_tickect editorder(Integer id) {

        return orderService.selectOrderById(id);
    }

    //登录
    @RequestMapping( value = "/login1")

    public String index(Model model, User u, HttpSession session) {

        System.out.println(u.getTelnumber() + u.getPassword());
        User user = userService.findUser(u.getTelnumber(), u.getPassword());
        if (u.getTelnumber() == "" || u.getPassword() == "") {
            model.addAttribute("msg", "账号密码不能为空");
        } else if (user != null) {
            //从dao查询的数据加入Session
            session.setAttribute("USER_SESSION", user);
            if (user.getStatus() == 1) {
                return "redirect:customer/list";
            } else {
                return "redirect:flight/list";
            }
        } else {
            model.addAttribute("msg", "用户名或密码错误，请重新输入");
        }

        return "denglu";
    }


    //用户退出
    @RequestMapping(value = "/enduser")
    public String enduser(HttpSession session) {
        session.invalidate();
        return "redirect:fangwendenglu";
    }

    //用户注册
    @RequestMapping(value = "/register")
    public String adduser(User u, Model model) {
        if (u.getIdcard() != null && u.getName() != null && u.getPassword() != null && u.getTelnumber() != null && u.getEmail() != null) {
            userService.addUser(u.getIdcard(), u.getName(), u.getPassword(), u.getTelnumber(), u.getEmail());
            model.addAttribute("msg", "注册成功");
            return "redirect:fangwendenglu";
        } else {
            model.addAttribute("msg", "输入内容有误，请重新输入！");
        }
        return "redirect:fangwenregister";

    }

    //跳转页面
    @RequestMapping(value = "/fangwen{key}")
    public String fangwen(@PathVariable String key) {

        if (key.equals("denglu")) {
            return "denglu";
        } else if (key.equals("register")) {
            return "register";
        } else{ return "index";}
    }

}
