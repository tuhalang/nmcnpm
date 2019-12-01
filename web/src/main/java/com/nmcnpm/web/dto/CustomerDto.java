/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.dto;

import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Customer;
import lombok.Data;

/**
 *
 * @author tuhalang
 */
@Data
public class CustomerDto extends ResponseDto<Customer>{
    private Account account;
}
