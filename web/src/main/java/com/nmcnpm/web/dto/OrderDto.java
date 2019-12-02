/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.dto;

/**
 *
 * @author tuhalang
 */

import com.nmcnpm.web.model.CustomerOrder;
import com.nmcnpm.web.model.OrderedProduct;
import lombok.Data;

@Data
public class OrderDto extends ResponseDto<OrderedProduct>{
    private Long totalMoney;

}
