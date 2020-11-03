package com.togogo.dao.impl;

import com.togogo.domain.Article;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class ArticleDaoImplTest {

    @Test
    void getUserArticles() {
        List<Article> C=new ArticleDaoImpl().getUserArticles(1);
        for(Object o:C)
        {
            System.out.println(o.toString());
        }
    }

    @Test
    void createArticle() {
    }

    @Test
    void selectArticle() {
    }

    @Test
    void updateArticle() {
    }

    @Test
    void deleteArticle() {
        System.out.println(new ArticleDaoImpl().deleteArticle(7));
    }

    @Test
    void getArticleUserID() {
        System.out.println(new ArticleDaoImpl().getArticleUserID(1));
    }
}