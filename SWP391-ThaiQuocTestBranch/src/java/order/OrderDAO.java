/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package order;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author dangn
 */
public class OrderDAO {

    private static final String GET_ALL_ORDERS = "SELECT [order_id],[full_name],[address],[status],[order_date],[user_id]\n"
            + "FROM [dbo].[Orders]";

    public List<OrderDTO> getAllOrders() throws SQLException {
        List<OrderDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_ALL_ORDERS);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int orderID = rs.getInt("order_id");
                    String userName = rs.getString("full_name");
                    String address = rs.getString("address");
                    String status = rs.getString("status");
                    Date date = rs.getDate("order_date");
                    int userID = rs.getInt("user_id");
                    list.add(new OrderDTO(orderID, userName, address, status, date, userID));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }
}
