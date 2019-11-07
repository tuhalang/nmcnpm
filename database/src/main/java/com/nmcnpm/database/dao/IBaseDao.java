package com.nmcnpm.database.dao;

import com.nmcnpm.database.mapper.IRowMapper;

import java.util.List;

public interface IBaseDao<T> {
    <T> List<T> query(String sql, IRowMapper<T> rowMapper, Object...parameters);
    long insert(String sql, Object...parameters);
    void update(String sql, Object...parameters);
    void delete(String sql, Object...parameters);
    long count(String sql, Object...parameters);
}
