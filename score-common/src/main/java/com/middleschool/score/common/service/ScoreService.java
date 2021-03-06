package com.middleschool.score.common.service;

import com.middleschool.score.common.dto.MsScore;
import com.middleschool.score.common.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/3/1.
 */
public interface ScoreService {
    MsScore getScoreById(Long id);

    List<ScoreClass> selectAllScoreByStudentId(Long id);

    List<MsScore> selectNowScoreByStudentId(Long id);

    int selectRanking(Long id,int classId);

    Page selectNowScoreByClassId(String courseName,int limit,int offset,long classId,int type);

    int[]  selectPassRateByClassId(Long id);

    int countStudents(Long id ,String courseName);

    int countScore(int grade,String name);

    int delete(Long id);

    void updateScore(MsScore msScore);

    List<MsScore> findAll(int limit,int offset,int grade,String name);
     double selectScoreByClassIdNoPage(String courseName,long  classId);
    int deleteByStudentId(Long id);

    List<MsScore> findScore(String id);

    List<MsScore> findTopHundredth(int id,int limit,int offset);

    int saves(List<MsScore> msScores);
    int save(MsScore msScore);
    List<TopScore> getSophomoreScore();
    List<TopScore> getJuniorScoreArt();
    List<TopScore> juniorScoreScience();
    List<TopScore> getSeniorScoreArt();
    List<TopScore> getSeniorScoreScience();
    TopScore getOneTopScore(String courseName,int type);

    double[] getSophomoreAvgScore();

    double[] getJuniorScoreAvgArt();

    double[] juniorScoreAvgScience();

    double[] getSeniorScoreAvgArt();

    double[] getSeniorScoreAvgScience();
    List<MsScore> findBySutClassTime(Long studentId,Long classTd,Date time);
}
