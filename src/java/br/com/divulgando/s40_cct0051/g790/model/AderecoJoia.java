package br.com.divulgando.s40_cct0051.g790.model;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Alexandre
 */
public class AderecoJoia {
    private int id_adereco;
    private String ds_adereco;

    public AderecoJoia() {
    }

    public AderecoJoia(int id_adereco, String ds_adereco) {
        this.id_adereco = id_adereco;
        this.ds_adereco = ds_adereco;
    }

    public int getId_adereco() {
        return id_adereco;
    }

    public String getDs_adereco() {
        return ds_adereco;
    }

    public void setId_adereco(int id_adereco) {
        this.id_adereco = id_adereco;
    }

    public void setDs_adereco(String ds_adereco) {
        this.ds_adereco = ds_adereco;
    }
    
    
}
