/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.models.mapper;

import com.noteoverflow.models.Count;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author trabdlkarim
 */
public class CountRowMapper  implements RowMapper<Count> {

    @Override
    public Count mapRow(ResultSet rs, int i) throws SQLException {
        Count count = new Count();
        count.setCount(rs.getInt("count"));
        return count;
    }
    
}
