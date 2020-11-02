package com.togogo.service.impl;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class EditArticleServiceImplTest {

    @Test
    void createArticle() {
        boolean b=new EditArticleServiceImpl().createArticle(1,"haha","haha");
        System.out.println(b);
    }
}