package com.juliannebezerra.wedding.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.juliannebezerra.wedding.dao.QuestionDao;
import com.juliannebezerra.wedding.model.Gift;
import com.juliannebezerra.wedding.model.Question;

public class QuestionDaoImpl extends HibernateDaoSupport implements QuestionDao{

	@Override
	public void add(Question question) {
		if(question != null)
		{
			getHibernateTemplate().save(question);
		}
	}

	@Override
	public List<Question> listQuestions() {
		return getHibernateTemplate().find("from Question");
	}

	@Override
	public Question findQuestion(Long id) {
		List<Question> qList = getHibernateTemplate().find("from Question where id = ?", id);
		if(qList != null && !qList.isEmpty())
			return qList.get(0);
		else
			return null;
	}

}
