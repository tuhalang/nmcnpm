package com.nmcnpm.database.mapper;

import java.sql.ResultSet;

public interface IRowMapper<T> {
    T mapRow(ResultSet result);
}
