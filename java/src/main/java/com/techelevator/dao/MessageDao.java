package com.techelevator.dao;

import com.techelevator.model.Message;
import com.techelevator.model.MessageBandDto;

import java.security.Principal;
import java.util.List;

public interface MessageDao {

    List<MessageBandDto> getInboxMessages(Principal principal);
    // messages from the bands that the principal is subscribed to

    Message sendMessage(Message message);

    void markMessageAsRead(long messageId, Principal principal);

    boolean getIsReadByMessageIdAndUserId(Principal principal, long messageId);

}
