package com.feihome.support.ws;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Repository;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;

/**
 * Echo messages by implementing a Spring {@link WebSocketHandler} abstraction.
 */
@Repository
public class EchoWebSocketHandler implements WebSocketHandler {

	private static final ArrayList<WebSocketSession> users;
	
	 static {
	        users = new ArrayList<WebSocketSession>();
	        System.out.println("create");
	    }
	
	@Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        users.add(session);
    }
	
	public void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		session.sendMessage(new TextMessage("what"));
	}

    /**
     * 给所有在线用户发送消息
     *
     * @param message
     */
	@Scheduled(cron = "0/5 * * * * ? ")
    public void sendMessageToUsers() {
		TextMessage message = new TextMessage("test");
        for (WebSocketSession user : users) {
            try {
                if (user.isOpen()) {
                    user.sendMessage(message);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

	@Override
	public void handleMessage(WebSocketSession session,
			WebSocketMessage<?> message) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void handleTransportError(WebSocketSession session,
			Throwable exception) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session,
			CloseStatus closeStatus) throws Exception {
		users.remove(session);
		
	}

	@Override
	public boolean supportsPartialMessages() {
		// TODO Auto-generated method stub
		return false;
	}
}
