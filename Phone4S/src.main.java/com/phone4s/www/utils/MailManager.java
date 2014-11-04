package com.phone4s.www.utils;




import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.*;

import javax.activation.DataHandler;
import javax.mail.Session;
import javax.mail.Message;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeUtility;
import javax.mail.util.ByteArrayDataSource;
import javax.mail.Message.RecipientType;
import javax.mail.Transport;
import javax.mail.MessagingException;


public class MailManager {
	
	String username="chenyunzhan08@126.com";
	
	private Message getMessage(){

		Properties p=new Properties();
		p.put("mail.transport.protocol","smtp");
		p.put("mail.smtp.host","smtp.126.com");
		p.put("mail.smtp.port","25");
		p.put("mail.smtp.auth","true");
		
		
		String password="snow21";
		MyAuthor auth=new MyAuthor(username,password);
		Session session=Session.getDefaultInstance(p,auth);
		Message message=new MimeMessage(session);
		
		return message;
	}
		
	
	
	public void sendVerify(String customerEmail,String validateCode, String basePath)
	throws MessagingException {
		
		Message message=getMessage();
		
			message.setFrom(new InternetAddress(username));
			message.setRecipient(RecipientType.TO,new InternetAddress(customerEmail));
			message.setSentDate(new Date());
			
			/*
			message.setSubject("感谢注册Phone4S帐号，请查收邮箱验证码");
			String m="<a href=\"http://localhost:8080/JavaMail/mailVerify?stu_nameMd5="+validateCode+"\">" +
					"http://localhost:8080/JavaMail/mailVerify?stu_nameMd5="+validateCode+"</a>";
			message.setContent(m,"text/html; charset=UTF-8");

			*/
			
			String email_subject = "感谢注册Phone4S帐号，请查收邮箱验证码";
			StringBuffer email_body = new StringBuffer();
			email_body.append("请点击下面的链接进行邮箱验证：<br>");
			email_body.append("<a href=\" "+ basePath + "verify_email.jsp?customerEmail="+customerEmail + "\">" + basePath + "verify_email.jsp?customerEmail="+customerEmail+"</a><br>");
			email_body.append("邮箱验证码为：<br>");
			email_body.append("<font color=\"red\" style=\"padding-left:20px\">" + validateCode + "</font><br>");
			email_body.append("Phone4S，您手机的4S店");
			
			try {
				message.setSubject( MimeUtility.encodeText(email_subject, "UTF-8", "B"));
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
            message.setSentDate(new Date());  
            StringBuffer sb = new StringBuffer();  
            sb.append("<HTML>");  
            sb.append("<HEAD>");  
            sb.append("<TITLE>");  
            sb.append(email_subject);  
            sb.append("</TITLE>");  
            sb.append("</HEAD>");  
  
            sb.append("<BODY>");  
            sb.append("<H2>" + email_subject + "</H2>");  
  
            sb.append(email_body);  
  
            sb.append("</BODY>");  
            sb.append("</HTML>");  
            try {
				message.setDataHandler(new DataHandler(  
				        new ByteArrayDataSource(sb.toString(), "text/html;charset=gb2312")));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
		
			
			Transport.send(message);
			
		}
	
	public void sendReset(String stu_email,String stu_nameMd5,String randMd5)
	throws MessagingException {
		Message message=getMessage();
		
		
		message.setFrom(new InternetAddress(username));
		message.setRecipient(RecipientType.TO,new InternetAddress(stu_email));
		message.setSentDate(new Date());
		
		message.setSubject("信号与系统");
		String m="<a href=\"http://111.167.93.170:8080/Mail/mailReset?stu_nameMd5="+stu_nameMd5+"&randMd5="+randMd5+"\">" +
				"http://111.167.93.170:8080/Mail/mailReset?stu_nameMd5="+stu_nameMd5+"&randMd5="+randMd5+"</a>";
		
		
		
		
		message.setContent(m,"text/html;charset=gb2312");
		
		Transport.send(message);
		
	}
	
	

}
