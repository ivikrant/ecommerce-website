package com.DAO;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.mail.smtp.SMTPSaslAuthenticator;


public class SendMail {

	public static boolean sendMail(String id,String pass,String toM){
		String  d_email = "vikrantchoudharylpu@gmail.com",
	            d_uname = "vikrant choudhary",
	            d_password = "654556792",
	            d_host = "smtp.gmail.com",
	            d_port  = "587",
	            m_to = "vikrant.choudhary6545@gmail.com",
	            m_subject = "Indoors Readable File: ",
	            m_text = "This message is from Indoor Positioning App. Required file(s) are attached.";
	    Properties props = new Properties();
	    props.put("mail.smtp.user", d_email);
	    props.put("mail.smtp.host", d_host);
	    props.put("mail.smtp.port", d_port);
	    props.put("mail.smtp.starttls.enable","true");
	    props.put("mail.smtp.debug", "true");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.socketFactory.port", d_port);
	    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	    props.put("mail.smtp.socketFactory.fallback", "false");

	    Session session = Session.getDefaultInstance(props,
	            new javax.mail.Authenticator() {
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                            return new PasswordAuthentication("vikrantchoudharylpu@gmail.com","654556792@");
	                    }
	            });
	    
	    session.setDebug(true);

	    MimeMessage msg = new MimeMessage(session);
	    try {
	        msg.setSubject(m_subject);
	        msg.setFrom(new InternetAddress(d_email));
	        msg.addRecipient(Message.RecipientType.TO, new InternetAddress(m_to));
	        
	Transport transport = session.getTransport("smtps");
	            transport.connect(d_host, Integer.valueOf(d_port), d_uname, d_password);
	            transport.sendMessage(msg, msg.getAllRecipients());
	            transport.close();

	        } catch (AddressException e) {
	            e.printStackTrace();
	            return false;
	        } catch (MessagingException e) {
	            e.printStackTrace();
	            return false;
	        }
		return false;
		
	}
	
}