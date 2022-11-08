/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.Shipping;

/**
 *
 * @author ADMIN
 */
public class ShippingDAO {

    

    public int createReturnId(Shipping shipping) {

        try {
            String sql = "INSERT INTO [dbo].[Shipping]\n"
                    + "           ([name]\n"
                    + "           ,[phone]\n"
                    + "           ,[address])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, shipping.getName());
            ps.setString(2, shipping.getPhone());
            ps.setString(3, shipping.getAddress());
            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(ShippingDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return 0;
    }
    
    public List<Shipping> getAllshipping() {
        List<Shipping> list = new ArrayList<>();
        try {
            String sql = "select * from Shipping";

            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Shipping product = Shipping.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .phone(rs.getString(3))
                        .address(rs.getString(4))
                       .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

      public List<Shipping> search(String id) {
        List<Shipping> list = new ArrayList<>();
        try {
            String sql = "select *  from Shipping where id=?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id );
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Shipping s =Shipping.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .phone(rs.getString(3))
                        .address(rs.getString(4))
                       .build();
                list.add(s);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
