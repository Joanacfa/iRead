package com.iread.models;


/**
 * Created by ReniH on 1/27/2018.
 */
public class PostInvia {

    private long id;
    private String postTitolo;
    private String postDescrizione;
    private String postData;
    private String userName;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPostTitolo() {
        return postTitolo;
    }

    public void setPostTitolo(String postTitolo) {
        this.postTitolo = postTitolo;
    }

    public String getPostDescrizione() {
        return postDescrizione;
    }

    public void setPostDescrizione(String postDescrizione) {
        this.postDescrizione = postDescrizione;
    }

    public String getPostData() {
        return postData;
    }

    public void setPostData(String postData) {
        this.postData = postData;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
