/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Patiz
 */
public class JobModelTEST {
    private int jobid;
    private String name;
    private String picpath;
    private String description;
    private int userId;

    public int getJobid() {
        return jobid;
    }

    public void setJobid(int jobid) {
        this.jobid = jobid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPicpath() {
        return picpath;
    }

    public void setPicpath(String picpath) {
        this.picpath = picpath;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    
        public void addJob(String name, String picpath,int userId,String description) throws IOException {
        JobModel jfm = new JobModel();
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement pstm = con.prepareStatement("insert into Job (name,picpath,userId,description) values(?,?,?,?)");
            pstm.setString(1, name);
            pstm.setString(2, picpath);
            pstm.setInt(3, userId);
            pstm.setString(4,description);
            pstm.executeUpdate();
            pstm.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(JobModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
        
        public static void main(String[] args) throws IOException {
        JobModelTEST jm = new JobModelTEST();
        
        jm.addJob("patis", "test", 001, "eieiza");
    }
}
