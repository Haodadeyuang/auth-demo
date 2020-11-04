package com.togogo.dao;

import com.togogo.domain.Article;

import java.util.List;

/**
 * 博客实体类的Dao接口
 */
public interface IArticleDao {
    /**
     * 通过用户ID来查找该用户的所有文章
     * @param user_id
     * @return
     */
    List<Article> getUserArticles(Integer user_id);

    /**
     * 查找文章作者
     * @param article_id
     * @return
     */
    Integer getArticleUserID(Integer article_id);

    /**
     * 创建新文章
     * @param article
     * @return
     */
    Boolean createArticle(Article article);

    /**
     * 查找对应文章
     * @param article_id
     * @return
     */
    Article selectArticle(Integer article_id);
    /**
     * 更新文章标题或内容
     * @param article
     * @return
     */
    Boolean updateArticle(Article article);

    /**
     * 删除对应文章
     * @param article_id
     * @return
     */
    Boolean deleteArticle(Integer article_id);

    /**
     * 点击次数＋1
     * @param article_id
     * @return
     */
    Boolean addViewcount(Integer article_id);

}
