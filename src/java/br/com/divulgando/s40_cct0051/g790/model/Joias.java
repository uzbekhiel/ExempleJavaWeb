/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.divulgando.s40_cct0051.g790.model;

import java.util.Date;

/**
 *
 * @author Alexandre
 */
public class Joias {
    private int id_joia;
    private String ds_nome;
    private double vl_preco;
    private java.util.Date dt_inclusao;
    private int fk_tipojoia;
    private int fk_aderecojoia;
    
    public Joias() {
    }

    public Joias(int id_joia, String ds_nome, double vl_preco, Date dt_inclusao, int fk_tipojoia, int fk_aderecojoia) {
        this.id_joia = id_joia;
        this.ds_nome = ds_nome;
        this.vl_preco = vl_preco;
        this.dt_inclusao = dt_inclusao;
        this.fk_tipojoia = fk_tipojoia;
        this.fk_aderecojoia = fk_aderecojoia;
    }

    public int getId_joia() {
        return id_joia;
    }

    public String getDs_nome() {
        return ds_nome;
    }

    public double getVl_preco() {
        return vl_preco;
    }

    public Date getDt_inclusao() {
        return dt_inclusao;
    }

    public int getFk_tipojoia() {
        return fk_tipojoia;
    }

    public int getFk_aderecojoia() {
        return fk_aderecojoia;
    }

    public void setId_joia(int id_joia) {
        this.id_joia = id_joia;
    }

    public void setDs_nome(String ds_nome) {
        this.ds_nome = ds_nome;
    }

    public void setVl_preco(double vl_preco) {
        this.vl_preco = vl_preco;
    }

    public void setDt_inclusao(Date dt_inclusao) {
        this.dt_inclusao = dt_inclusao;
    }

    public void setFk_tipojoia(int fk_tipojoia) {
        this.fk_tipojoia = fk_tipojoia;
    }

    public void setFk_aderecojoia(int fk_aderecojoia) {
        this.fk_aderecojoia = fk_aderecojoia;
    }
    
    
}
