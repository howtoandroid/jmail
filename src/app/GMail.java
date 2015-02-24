package app;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.gmail.Gmail;
import com.google.api.services.gmail.Gmail.Users.Messages;
import com.google.api.services.gmail.model.ListMessagesResponse;
import com.google.api.services.gmail.model.Message;

public class GMail {
	
	HttpTransport httpTransport = new NetHttpTransport();
    JsonFactory jsonFactory = new JacksonFactory();
    
//	Gmail getGMailService(){
////		Gmail service = new Gmail.Builder(httpTransport, jsonFactory, credential)
////        .setApplicationName("JMail").build();
//		
//		return service;
//	}
	
	void getUnreadMails(){
		
//		Gmail service = getGMailService();
//		// Miguel es un monogrillo
//		ListMessagesResponse response = null;
//		try {
//			response = service.users().messages().list("me").execute();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//
//	    List<Message> messages = new ArrayList<Message>();
//	    
//	    while (response.getMessages() != null) {
//	      messages.addAll(response.getMessages());
//	      if (response.getNextPageToken() != null) {
//	        String pageToken = response.getNextPageToken();
//	        try {
//				response = service.users().messages().list("me")
//				    .setPageToken(pageToken).execute();
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//	      } else {
//	        break;
//	      }
//	    }
//
//	    for (Message message : messages) {
//	      try {
//			System.out.println(message.toPrettyString());
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//	    }
	}
}
