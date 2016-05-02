package com.juliannebezerra.wedding.dao;

import java.util.List;

import com.juliannebezerra.wedding.model.Question;

public interface QuestionDao {

	void add(Question question);
	List<Question> listQuestions();
	Question findQuestion (Long id);
}
