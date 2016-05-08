package com.middleschool.score.common.service.impl;

import com.middleschool.score.common.dto.MsClass;
import com.middleschool.score.common.mapper.MsClassMapper;
import com.middleschool.score.common.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2016/5/8.
 */
@Service
public class ClassServiceImpl implements ClassService{

    @Autowired
    private MsClassMapper msClassMapper;
    @Override
    public List<MsClass> getByRankDeptAndGradeAndName(String name, String rankDept, String grade) {
        return msClassMapper.selectByNameAndDeptAndGrade(grade,name,rankDept);
    }
}
