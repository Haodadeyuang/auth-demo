package com.togogo.domain;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/11/2 15:55
 */
public class Article implements Serializable {
    private Integer article_id;
    private Integer author_id;
    private Integer article_viewcount;
    private Timestamp article_createtime;
    private String article_title;
    private String article_content;

    @Override
    public String toString() {
        return "Article{" +
                "article_id=" + article_id +
                ", author_id=" + author_id +
                ", article_viewcount=" + article_viewcount +
                ", article_createtime=" + article_createtime +
                ", article_title='" + article_title + '\'' +
                ", article_content='" + article_content + '\'' +
                '}';
    }

    public Integer getArticle_id() {
        return article_id;
    }

    public void setArticle_id(Integer article_id) {
        this.article_id = article_id;
    }

    public Integer getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(Integer author_id) {
        this.author_id = author_id;
    }

    public Integer getArticle_viewcount() {
        return article_viewcount;
    }

    public void setArticle_viewcount(Integer article_viewcount) {
        this.article_viewcount = article_viewcount;
    }

    public Timestamp getArticle_createtime() {
        return article_createtime;
    }

    public void setArticle_createtime(Timestamp article_createtime) {
        this.article_createtime = article_createtime;
    }

    public String getArticle_title() {
        return article_title;
    }

    public void setArticle_title(String article_title) {
        this.article_title = article_title;
    }

    public String getArticle_content() {
        return article_content;
    }

    public void setArticle_content(String article_content) {
        this.article_content = article_content;
    }

}
