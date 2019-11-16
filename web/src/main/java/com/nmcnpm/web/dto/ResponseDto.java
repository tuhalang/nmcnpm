package com.nmcnpm.web.dto;

import java.util.List;
import lombok.Data;

@Data
public abstract class ResponseDto<T> {
    private Long totalPages;
    private int currentPage=1;
    private int elePerPage=12;
    private List<T> listOfdata;
    private T singleData;
}
