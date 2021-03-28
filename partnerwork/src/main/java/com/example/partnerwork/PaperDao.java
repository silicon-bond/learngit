package com.example.partnerwork;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PaperDao {
    private static PaperDao paperDao;
    private int currentPage = 1;
    
    private PaperDao(){}
    
    public static PaperDao getInstance(){
        if (paperDao == null){
            paperDao = new PaperDao();
        }
        return paperDao;
    }

    public void setCurrentPage(int currentPage){
        this.currentPage = currentPage;
    }

    public int getCurrentPage(){
        return currentPage;
    }
    
    public int getTotal(){
        int total = 0;
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement()) {
            String sql = "select count(*) from paper";
            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return total;
    }
    
    public void add(Paper bean){
        String sql = "insert into paper values(null ,? ,? ,? ,? ,? ,?)";
        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, bean.getTitle());
            ps.setString(2, bean.getAbstractText());
            ps.setString(3, bean.getKeywords());
            ps.setString(4, bean.getDoiLink());
            ps.setInt(5, bean.getPublicationDate());
            ps.setString(6, bean.getConference());
            ps.execute();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                int id = rs.getInt(1);
                bean.setId(id);
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
    }

    public void add(List<Paper> list){
        String sql = "insert into paper values(null ,? ,? ,? ,? ,? ,?)";
        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            for (Paper bean : list){
                ps.setString(1, bean.getTitle());
                ps.setString(2, bean.getAbstractText());
                ps.setString(3, bean.getKeywords());
                ps.setString(4, bean.getDoiLink());
                ps.setInt(5, bean.getPublicationDate());
                ps.setString(6, bean.getConference());
                ps.execute();
                ResultSet rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    int id = rs.getInt(1);
                    bean.setId(id);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Paper> list(){
        List<Paper> list = new ArrayList<Paper>();
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement()) {
            String sql = "select * from paper";
            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                Paper paper = new Paper();
                paper.setId(rs.getInt("id"));
                paper.setTitle(rs.getString("title"));
                paper.setAbstractText(rs.getString("abstract"));
                paper.setKeywords(rs.getString("keywords"));
                paper.setTags();
                paper.setDoiLink(rs.getString("doiLink"));
                paper.setPublicationDate(rs.getInt("publicationDate"));
                paper.setConference(rs.getString("conference"));
                list.add(paper);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Paper> list(int start, int count){
        List<Paper> list = new ArrayList<Paper>();
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement()) {
            String sql = "select * from paper limit " + (start-1)*8+",8";
            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                Paper paper = new Paper();
                paper.setId(rs.getInt("id"));
                paper.setTitle(rs.getString("title"));
                paper.setAbstractText(rs.getString("abstract"));
                paper.setKeywords(rs.getString("keywords"));
                paper.setTags();
                paper.setDoiLink(rs.getString("doiLink"));
                paper.setPublicationDate(rs.getInt("publicationDate"));
                paper.setConference(rs.getString("conference"));
                System.out.println(paper);
                list.add(paper);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
