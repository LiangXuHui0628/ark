package com.siro.ark.comm.base.vo;

/**
 *
 */
public class PCAjaxVO {
    private Boolean success;
    private String code;
    private String message;

    public PCAjaxVO(Boolean success) {
        this.success = success;
    }

    public PCAjaxVO(Boolean success, String message) {
        this.success = success;
        this.message = message;
    }

    public Boolean isSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
