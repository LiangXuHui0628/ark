package com.siro.ark.comm.exception;


import com.siro.ark.comm.base.entity.ReturnDTO;
import com.siro.ark.comm.enums.HttpCodeEnum;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/**
 * 公共 业务 异常类
 */
public class ArkException extends RuntimeException {

    private Logger logger = LoggerFactory.getLogger(getClass());

    protected String error;
    protected int code;
    protected ReturnDTO returnDTO;

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public ReturnDTO getReturnDTO() {
        return returnDTO;
    }

    public void setReturnDTO(ReturnDTO returnDTO) {
        this.returnDTO = returnDTO;
    }

    public ArkException(ReturnDTO returnDTO) {
        super(returnDTO.getError());
        this.returnDTO = returnDTO;
    }

    public ArkException(String error) {
        super(error);
        this.code = HttpCodeEnum.UN_KNOW_ERROR.getCode();
        this.error = error;
        this.returnDTO = new ReturnDTO(code, error);
    }

    public ArkException(int code, String error) {
        super(error);
        this.code = code;
        this.error = error;
        this.returnDTO = new ReturnDTO(code, error);
    }

    public ArkException(HttpCodeEnum httpCodeEnum) {
        super(httpCodeEnum.getMessage());
        this.code = httpCodeEnum.getCode();
        this.error = httpCodeEnum.getMessage();
        this.returnDTO = new ReturnDTO(code, error);
    }
}
