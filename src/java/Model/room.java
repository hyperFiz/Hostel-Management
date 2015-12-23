/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author user
 */
public class room {
 
    private int kolejID;
    private int available;
    private int all;

    /**
     * @return the available
     */
    public int getAvailable() {
        return available;
    }

    /**
     * @param available the available to set
     */
    public void setAvailable(int available) {
        this.available = available;
    }

    /**
     * @return the all
     */
    public int getAll() {
        return all;
    }

    /**
     * @param all the all to set
     */
    public void setAll(int all) {
        this.all = all;
    }

    /**
     * @return the kolejID
     */
    public int getKolejID() {
        return kolejID;
    }

    /**
     * @param kolejID the kolejID to set
     */
    public void setKolejID(int kolejID) {
        this.kolejID = kolejID;
    }
    
}
