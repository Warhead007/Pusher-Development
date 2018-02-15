/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rawit Supatanakorn
 */
public class ProfileModel {
    private int userId;
    private String username;
    private String picpath;
    private float rating;
    private String email;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPicpath() {
        return picpath;
    }

    public void setPicpath(String picpath) {
        this.picpath = picpath;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public static ArrayList<ProfileModel> getById(int userId) {
        ArrayList<ProfileModel> pm = new ArrayList<>();
        ProfileModel profile = new ProfileModel();
        try {
            Connection con = ConnectionBuidler.getConnection();
            PreparedStatement pstm = con.prepareStatement("select * from profile where userId = ?");
            pstm.setInt(1, userId);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                profile.userId = rs.getInt("userId");
                profile.username = rs.getString("username");
                profile.picpath = rs.getString("picpath");
                profile.rating = rs.getFloat("rating");
                profile.email = rs.getString("email");
                pm.add(profile);
            }
            pstm.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProfileModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pm;
    }
    
    public static void main(String[] args) {
        ArrayList<ProfileModel> p = ProfileModel.getById(1);

        for (ProfileModel profile : p) {
            String test = profile.getUsername()+ " " + profile.getEmail();
            String srt = test.substring(0, test.indexOf(" "));
            System.out.println(test);

        }
    }
}
