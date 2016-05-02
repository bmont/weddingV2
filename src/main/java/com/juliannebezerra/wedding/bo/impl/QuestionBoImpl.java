package com.juliannebezerra.wedding.bo.impl;

import java.util.List;

import com.juliannebezerra.wedding.bo.QuestionBo;
import com.juliannebezerra.wedding.dao.QuestionDao;
import com.juliannebezerra.wedding.model.Question;

public class QuestionBoImpl implements QuestionBo{

	QuestionDao questionDao;
	
	public void setQuestionDao(QuestionDao dao)
	{
		this.questionDao = dao;
	}
	
	@Override
	public void add(Question question) {
		questionDao.add(question);
	}

	@Override
	public List<Question> listQuestions() {
		return questionDao.listQuestions();
	}

	@Override
	public Question findQuestion(Long id) {
		return questionDao.findQuestion(id);
	}

}
