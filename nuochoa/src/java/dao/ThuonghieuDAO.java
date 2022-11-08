/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Thuonghieu;

/**
 *
 * @author Admin
 */
public class ThuonghieuDAO {

    public List<Thuonghieu> getAllTH() {
        List<Thuonghieu> list = new ArrayList<>();
        try {
            String sql = "select * from Thuonghieu";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Thuonghieu category = Thuonghieu.builder()
                        .idth(rs.getInt(1))
                        .nameth(rs.getString(2)).build();
                list.add(category);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Thuonghieu> getProductsByCategoryId(int categoryId) {
        List<Thuonghieu> list = new ArrayList<>();
        try {
            String sql = "select * from Product where Product.category_id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Thuonghieu product = Thuonghieu.builder()
                        .idth(rs.getInt(1))
                        .nameth(rs.getString(2)).build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void add(String nameth) {
        String sql = "INSERT INTO [dbo].[Thuonghieu]\n"
                + "           ([nameth])\n"
                + "     VALUES\n"
                + "           (?)";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, nameth);

            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
