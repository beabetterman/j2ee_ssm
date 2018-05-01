package ssm.douban.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ssm.douban.service.IRabbitmqService;

@Controller
@RequestMapping("/rabbitmq")
public class RabbitmqController {
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private IRabbitmqService rabbitmqService;
	
	@RequestMapping("/send_message")
	public String sendMessage(String message,HttpServletRequest request,Model model) {
		
		String messageStr = message;
		rabbitmqService.sendData(IRabbitmqService.testKey, messageStr);
		
		return "rabbitmq_message_send_success";
	}
}
