package com.iread.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * Created by ReniH on 1/27/2018.
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class Recensione {
    int id;
    int numberOfStars;
    String text;
    String userName;
    String userSurname;
    String reviewDate;

    public Recensione(int id, int numberOfStars, String text, String userName, String userSurname, String reviewDate) {
        this.id = id;
        this.numberOfStars = numberOfStars;
        this.text = text;
        this.userName = userName;
        this.userSurname = userSurname;
        this.reviewDate = reviewDate;
    }

    public Recensione() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNumberOfStars() {
        return numberOfStars;
    }

    public void setNumberOfStars(int numberOfStars) {
        this.numberOfStars = numberOfStars;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(String reviewDate) {
        this.reviewDate = reviewDate;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserSurname() {
        return userSurname;
    }

    public void setUserSurname(String userSurname) {
        this.userSurname = userSurname;
    }
}
