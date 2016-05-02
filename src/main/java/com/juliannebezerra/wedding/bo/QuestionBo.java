package com.juliannebezerra.wedding.bo;

import java.util.List;

import com.juliannebezerra.wedding.model.Question;

public interface QuestionBo {

	void add(Question question);
	List<Question> listQuestions();
	Question findQuestion (Long id);
}
