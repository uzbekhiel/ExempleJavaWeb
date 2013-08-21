/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.divulgando.s40_cct0051.g790.model;

/**
 *
 * @author Alexandre
 */
public class TipoJoia {
    private int id_tipojoia;
    private String ds_tipojoia;
    
    public TipoJoia() {
    }

    public TipoJoia(int id_tipojoia, String ds_tipojoia) {
        this.id_tipojoia = id_tipojoia;
        this.ds_tipojoia = ds_tipojoia;
    }

    public int getId_tipojoia() {
        return id_tipojoia;
    }

    public String getDs_tipojoia() {
        return ds_tipojoia;
    }

    public void setId_tipojoia(int id_tipojoia) {
        this.id_tipojoia = id_tipojoia;
    }

    public void setDs_tipojoia(String ds_tipojoia) {
        this.ds_tipojoia = ds_tipojoia;
    }

   

    
}
