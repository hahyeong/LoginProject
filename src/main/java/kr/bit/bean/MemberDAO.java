package kr.bit.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    public void insertMember(MemberBean mbean) {
        try {
            DBConnectionDAO db = new DBConnectionDAO();
            conn = db.getConn();

            String sql = "insert into member values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, mbean.getId());
            pstmt.setString(2, mbean.getPass());
            pstmt.setString(3, mbean.getName());
            pstmt.setString(4, mbean.getGender());
            pstmt.setString(5, mbean.getEmail());
            pstmt.setString(6, mbean.getBirth());
            pstmt.setString(7, mbean.getZipcode());
            pstmt.setString(8, mbean.getAddress());
            pstmt.setString(9, mbean.getHobby());
            pstmt.setString(10, mbean.getJob());

            pstmt.executeUpdate();

            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean idCheck(String id) throws SQLException, ClassNotFoundException {
        DBConnectionDAO db = new DBConnectionDAO();
        conn = db.getConn();

        boolean notDup = true;
        String sql = "select * from member where id=?";

        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        rs = pstmt.executeQuery();
        if (rs.next()) {
            notDup = false;
        }
        return notDup;
    }

    public boolean loginCheck(String id, String pass) {

        try {
            DBConnectionDAO db = new DBConnectionDAO();
            conn = db.getConn();
            pstmt = conn.prepareStatement("SELECT id,pass FROM member WHERE id=? AND pass=?");
            pstmt.setString(1, id);
            pstmt.setString(2, pass);

            rs = pstmt.executeQuery();

            if (!rs.next()) {

                return false;

            }

            return true;

        } catch (SQLException e) {
            throw new RuntimeException("로그인 중 문제가 발생하였습니다.", e);
        }
    }
}