/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author USER
 */
public class ApprovalList {
    
    private int studId,requestID,roomType;
    private String status;
    private String studName;
    private String kolejName;

    /**
     * @return the studId
     */
    public int getStudId() {
        return studId;
    }

    /**
     * @param studId the studId to set
     */
    public void setStudId(int studId) {
        this.studId = studId;
    }

    /**
     * @return the requestID
     */
    public int getRequestID() {
        return requestID;
    }

    /**
     * @param requestID the requestID to set
     */
    public void setRequestID(int requestID) {
        this.requestID = requestID;
    }

    /**
     * @return the roomType
     */
    public int getRoomType() {
        return roomType;
    }

    /**
     * @param roomType the roomType to set
     */
    public void setRoomType(int roomType) {
        this.roomType = roomType;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the studName
     */
    public String getStudName() {
        return studName;
    }

    /**
     * @param studName the studName to set
     */
    public void setStudName(String studName) {
        this.studName = studName;
    }

    /**
     * @return the kolejName
     */
    public String getKolejName() {
        return kolejName;
    }

    /**
     * @param kolejName the kolejName to set
     */
    public void setKolejName(String kolejName) {
        this.kolejName = kolejName;
    }

}
