package com.wx.farm.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wx.farm.domain.Result;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.util.concurrent.CopyOnWriteArraySet;

/**
 * Created by Administrator on 2017/8/19.
 */
@Component
@ServerEndpoint("/webSocket")
@Slf4j
public class WebSocket {

    private Logger log = LoggerFactory.getLogger(WebSocket.class);

    private Session session;

    private static CopyOnWriteArraySet<WebSocket> webSockets = new CopyOnWriteArraySet<>();

    private Result messageVO = new Result();

    @OnOpen
    public void onOpen(Session session) {
        this.session = session;
        webSockets.add(this);


        messageVO.setCode(1);
        messageVO.setData(webSockets.size());
        messageVO.setMsg("有新的连接");

        ObjectMapper mapper = new ObjectMapper();

        String Json = "";
        try {
            Json = mapper.writeValueAsString(messageVO);
        } catch (Exception ex) {
            log.error(ex.getMessage());
        }

        this.sendMessage(Json);
        log.info("【websocket消息】有新的连接, 总数:{}", webSockets.size());
    }


    @OnClose
    public void onClose() {
        webSockets.remove(this);

        messageVO.setCode(2);
        messageVO.setData(webSockets.size());
        messageVO.setMsg("有用户离开");

        ObjectMapper mapper = new ObjectMapper();

        String Json = "";
        try {
            Json = mapper.writeValueAsString(messageVO);
        } catch (Exception ex) {
            log.error(ex.getMessage());
        }

        this.sendMessage(Json);


        log.info("【websocket消息】连接断开, 总数:{}", webSockets.size());
    }

    @OnMessage
    public void onMessage(String message) {

        messageVO.setCode(3);
        messageVO.setData(webSockets.size());
        messageVO.setMsg(message);

        ObjectMapper mapper = new ObjectMapper();

        String Json = "";
        try {
            Json = mapper.writeValueAsString(messageVO);
        } catch (Exception ex) {
            log.error(ex.getMessage());
        }

        this.sendMessage(Json);

        log.info("【websocket消息】收到客户端发来的消息:{}", message);
    }

    public void sendMessage(String message) {
        for (WebSocket webSocket : webSockets) {
            log.info("【websocket消息】广播消息, message={}", message);
            try {
                webSocket.session.getBasicRemote().sendText(message);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}