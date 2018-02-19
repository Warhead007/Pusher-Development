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
 * @author nuswee43
 */
public class JobModel {
    private int jobid;
    private String name;
    private String picpath;
    private String description;
    private int userId;

    @Override
    public String toString() {
        return "JobModel{" + "jobid=" + jobid + ", name=" + name + ", picpath=" + picpath + ", description=" + description + ", userId=" + userId + '}';
    }
    
    public static ArrayList<JobModel> getJob(int id) throws SQLException {
        ArrayList jobDesc = new ArrayList<>();
        JobModel j = null;
        Connection con = ConnectionBuidler.getConnection();
        try {

            PreparedStatement pstm = con.prepareStatement("SELECT *"
                    + "FROM Job "
                    + "WHERE jobid = 1");
            pstm.setInt(1,id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                j = new JobModel();
                orm(rs, j);
            }
            con.close();

        } catch (SQLException ex) {
            Logger.getLogger(JobModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return jobDesc;
    }

    private static void orm(ResultSet rs, JobModel b) throws SQLException {
        b.setJobid(rs.getInt("jobid"));
        b.setName(rs.getString("name"));
        b.setPicpath("picpath");
        b.setDescription(rs.getString("description"));
        b.setUserId(rs.getInt("userid"));
    }
    public JobModel() {
    }

    public JobModel(int jobid, String name, String picpath, String description, int userId) {
        this.jobid = jobid;
        this.name = name;
        this.picpath = picpath;
        this.description = description;
        this.userId = userId;
    }
    
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
    
    public static void main(String[] args) throws SQLException {

        JobModel jm = new JobModel();
        System.out.println(jm.getJob(1));

        ArrayList<JobModel> j = JobModel.getJob(1);

        for (JobModel job : j) {
            String test = job.getName()+ " " + job.getDescription();
            String srt = test.substring(0, test.indexOf(" "));
            System.out.println(test);
        }

    }

    void addJob(String patis, String test, int i, String eieiza) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
