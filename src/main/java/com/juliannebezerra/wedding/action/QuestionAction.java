package com.juliannebezerra.wedding.action;

import java.util.ArrayList;
import java.util.List;

import com.juliannebezerra.wedding.bo.QuestionBo;
import com.juliannebezerra.wedding.model.Question;
import com.opensymphony.xwork2.ModelDriven;

public class QuestionAction implements ModelDriven<Question> {

	Question question = new Question();
	List<Question> qList = new ArrayList<Question>();
	
	QuestionBo questionBo;
	
	public QuestionBo getQuestionBo() {
		return questionBo;
	}

	public void setQuestionBo(QuestionBo questionBo) {
		this.questionBo = questionBo;
	}

	@Override
	public Question getModel() {
		return question;
	}

}
