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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;
import model.Status;

/**
 *
 * @author ADMIN
 */
public class OrderDAO {

    public int createReturnId(Order order) {
        try {
            String sql = "INSERT INTO [dbo].[Orders]\n"
                    + "           ([account_id]\n"
                    + "           ,[totalPrice]\n"
                    + "           ,[note]\n"
                    + "           ,[shipping_id]\n"
                    + "           ,[status_id])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, order.getAccountId());
            ps.setDouble(2, order.getTotalPrice());
            ps.setString(3, order.getNote());
            ps.setInt(4, order.getShippingId());
            ps.setInt(5, order.getStatus_id());
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

    public List<Order> getAll() {
        List<Order> list = new ArrayList<>();
        try {
            String sql = "select * from Orders";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order product = Order.builder()
                        .id(rs.getInt(1))
                        .accountId(rs.getInt(2))
                        .totalPrice(rs.getDouble(3))
                        .note(rs.getString(4))
                        .createdDate(rs.getString(5))
                        .shippingId(rs.getInt(6))
                        .status_id(rs.getInt(7))
                        .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Order> getAllOS() {
        List<Order> list = new ArrayList<>();
        try {
            String sql = "select o.id,o.totalPrice,o.note,o.created_date,o.shipping_id,o.status_id,s.stid, s.stname\n"
                    + "from Orders o inner join Status s on o.status_id= s.stid ";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order o = Order.builder()
                        .id(rs.getInt(1))
                        .accountId(rs.getInt(2))
                        .totalPrice(rs.getDouble(3))
                        .note(rs.getString(4))
                        .createdDate(rs.getString(5))
                        .shippingId(rs.getInt(6))
                        .status_id(rs.getInt(7))
                        .build();

                Status s = Status.builder()
                        .stid(rs.getInt(1))
                        .stname(rs.getString(2))
                        .build();

                o.setStatus(s);
                list.add(o);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Order> gettotalMoney() {
        List<Order> list = new ArrayList<>();
        try {
            String sql = "select Sum(totalPrice) from Orders";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order product = Order.builder()
                        .id(rs.getInt(1))
                        .accountId(rs.getInt(2))
                        .totalPrice(rs.getDouble(3))
                        .note(rs.getString(4))
                        .createdDate(rs.getString(5))
                        .shippingId(rs.getInt(6))
                        .status_id(rs.getInt(7))
                        .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Order> search(String id) {
        List<Order> list = new ArrayList<>();
        try {
            String sql = "select *  from Orders where status_id=?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id );
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order product = Order.builder()
                        .id(rs.getInt(1))
                        .accountId(rs.getInt(2))
                        .totalPrice(rs.getDouble(3))
                        .note(rs.getString(4))
                        .createdDate(rs.getString(5))
                        .shippingId(rs.getInt(6))
                        .status_id(rs.getInt(7))
                        .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
