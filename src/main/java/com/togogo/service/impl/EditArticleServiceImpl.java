package com.togogo.service.impl;

import com.togogo.dao.impl.ArticleDaoImpl;
import com.togogo.domain.Article;
import com.togogo.service.IEditArticleService;

import java.sql.Timestamp;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/11/2 17:33
 */
public class EditArticleServiceImpl implements IEditArticleService {

    @Override
    public boolean createArticle(Integer author_id, String article_title, String article_content) {
        Article ar=new Article();
        ar.setAuthor_id(author_id);
        ar.setArticle_title(article_title);
        ar.setArticle_content(article_content);
        ar.setArticle_createtime(new Timestamp(System.currentTimeMillis()));
        return new ArticleDaoImpl().createArticle(ar);
    }
}
