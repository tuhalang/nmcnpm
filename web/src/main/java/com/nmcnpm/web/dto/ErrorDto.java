package com.nmcnpm.web.dto;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
@Data
public class ErrorDto extends ResponseDto{
    List<String> errors;

    public ErrorDto(){
        errors = new ArrayList<>();
    }
}
