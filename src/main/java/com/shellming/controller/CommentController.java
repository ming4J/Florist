package com.shellming.controller;

import com.shellming.dao.CommentDao;
import com.shellming.entity.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class CommentController {

    @Autowired
    private CommentDao commentDao;
    @RequestMapping(value = "/comment",method = RequestMethod.POST)
    public void doComment(@RequestBody Comment comment){
        commentDao.doComment(comment);
    }

    @RequestMapping(value = "/comment/{flowerId}")
    public @ResponseBody List<Comment> listComment(@PathVariable String flowerId){
        return commentDao.listCommentByFlowerId(flowerId);
    }
}
