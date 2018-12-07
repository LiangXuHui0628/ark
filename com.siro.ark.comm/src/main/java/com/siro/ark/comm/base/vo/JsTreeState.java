package com.siro.ark.comm.base.vo;

import java.io.Serializable;

/**
 *
 */
public class JsTreeState implements Serializable {
    private static final long serialVersionUID = 7579097854099172376L;
    private Boolean opened=false;
    private Boolean disabled=false;
    private Boolean selected=false;
    public JsTreeState(){
    }
    public Boolean getDisabled(){
        return disabled;
    }
    public void setDisabled(Boolean disabled){
        this.disabled=disabled;
    }
    public Boolean getSelected(){
        return selected;
    }
    public void setSelected(Boolean selected){
        this.selected=selected;
    }
    public Boolean getOpened(){
        return opened;
    }
    public void setOpened(Boolean opened){
        this.opened=opened;
    }

}
