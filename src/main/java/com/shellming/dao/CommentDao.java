package com.shellming.dao;

import com.shellming.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentDao {
    void doComment(Comment comment);
    List<Comment> listCommentByFlowerId(@Param("flowerId")String flowerId);
}
