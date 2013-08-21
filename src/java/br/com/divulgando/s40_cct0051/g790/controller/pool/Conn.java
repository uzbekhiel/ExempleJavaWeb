/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.divulgando.s40_cct0051.g790.controller.pool;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Alexandre
 */
public class Conn {
	
    static Connection conn = null;

	public static Connection getConnection() {
        if ( conn==null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
/*
                conn = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/divulgando05",
                        "divulgando05","cct0051");
*/
                conn = DriverManager.getConnection(
                        "jdbc:mysql://mysql.divulgando.com.br/divulgando05",
                        "divulgando05","cct0051");

            } catch (Exception e) {
                return null;
            }
        }        

        return conn;
	}

	/**
	 * Conn
	 *
	 *
	 */
	private Conn() {
        }
}
