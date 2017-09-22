package dao;

import entity.Items;
import util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

//商品的业务逻辑类；
public class ItemsDao {
    //获取商品的所有信息；
    public ArrayList<Items> getAllItems() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Items> list = new ArrayList<Items>();
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from items;";
            stmt = conn.prepareStatement(sql);//语句对象；
            rs = stmt.executeQuery();
            while (rs.next()) {
                Items item = new Items();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setCity(rs.getString("city"));
                item.setNumber(rs.getInt("number"));
                item.setPrice(rs.getInt("price"));
                item.setPictuer(rs.getString("picture"));
                list.add(item);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                    stmt = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    //根据商品编号获得商品资料的方法；
    public Items getItemsById(int id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = DBHelper.getConnection();
            String sql = "SELECT * FROM items WHERE id=?;";
            stmt = conn.prepareStatement(sql);//语句对象；
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            if (rs.next()) {
                Items item = new Items();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setCity(rs.getString("city"));
                item.setNumber(rs.getInt("number"));
                item.setPrice(rs.getInt("price"));
                item.setPictuer(rs.getString("picture"));
                return item;
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                    stmt = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
    //获取最近浏览的前五条商品的信息；
    public ArrayList<Items> getViewList(String list){
        ArrayList<Items> itemlist=new ArrayList<Items>();
        int iCount=5;//
        if (list!=null&&list.length()>0){
            String[] arr=list.split(",");
           if(arr.length>=5){
               for (int i = arr.length-1; i >=arr.length-iCount ; i--) {
                   itemlist.add(getItemsById(Integer.parseInt(arr[i])));
               }
           }
           else {
               for (int i = arr.length-1; i >=0 ; i--) {
                   itemlist.add(getItemsById(Integer.parseInt(arr[i])));
               }
           }

            return itemlist;
        }
        else{
            return null;
        }
    }
}