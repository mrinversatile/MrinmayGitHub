package com.net.codejava.email;

import java.util.Date;
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

/**
 * A utility class for sending e-mail messages
 * 
 * @author mrinmay kundu
 *
 */
public class EmailUtility {
	public static void sendEmail(String host, String port, final String userName, final String password,
			String toAddress, String subject, String message, String from, String emailfrom)
					throws AddressException, MessagingException {

		// sets SMTP server properties
		Properties properties = new Properties();
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", port);
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.connectiontimeout", 900000);
		properties.put("mail.smtp.timeout", 9000);
		properties.put("mail.debug", "true");
		properties.put("mail.smtp.user", userName);
		properties.put("mail.smtp.password", password);
		properties.put("mail.smtp.ssl.trust", host);
		// creates a new session with an authenticator
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
//				return new PasswordAuthentication(userName, password);
				return new PasswordAuthentication("mkundu@mrinmay.com","Hurricane2011!");
			}
		};

		Session session = Session.getInstance(properties, auth);
		// creates a new e-mail message
		Message msg = new MimeMessage(session);

		msg.setFrom(new InternetAddress(emailfrom));
		InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
		msg.setRecipients(Message.RecipientType.TO, toAddresses);
		msg.setSubject(subject + " : " + from);
		msg.setSentDate(new Date());
		msg.setText(message);

		// sends the e-mail
		System.out.println("i have reached here111111111111111!");
		Transport.send(msg);
	    System.out.println("i have reached here222222222222222222!");
		
	    
	  /*  
	    Transport transport = session.getTransport("smtp");


	    transport.connect(host, from, password);
	    transport.sendMessage(msg, msg.getAllRecipients());
	    transport.close();*/
	}
}
