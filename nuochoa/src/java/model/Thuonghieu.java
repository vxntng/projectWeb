/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author Admin
 */
@Builder
@Getter
@Setter
@ToString
public class Thuonghieu {
     private int idth;
    private String nameth;

    public Thuonghieu() {
    }

    public Thuonghieu(int idth, String nameth) {
        this.idth = idth;
        this.nameth = nameth;
    }

    public int getIdth() {
        return idth;
    }

    public void setIdth(int idth) {
        this.idth = idth;
    }

    public String getNameth() {
        return nameth;
    }

    public void setNameth(String nameth) {
        this.nameth = nameth;
    }
    
    
}
