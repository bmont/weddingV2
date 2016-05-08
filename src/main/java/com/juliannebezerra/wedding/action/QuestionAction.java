package com.juliannebezerra.wedding.action;

import java.util.ArrayList;
import java.util.List;

import com.juliannebezerra.wedding.bo.QuestionBo;
import com.juliannebezerra.wedding.model.Question;
import com.juliannebezerra.wedding.model.User;
import com.opensymphony.xwork2.ModelDriven;

public class QuestionAction implements ModelDriven<Question> {

	Question question = new Question();
	List<Question> qList = new ArrayList<Question>();
	
	Long userId;
	QuestionBo questionBo;
	
	public QuestionBo getQuestionBo() {
		return questionBo;
	}

	public void setQuestionBo(QuestionBo questionBo) {
		this.questionBo = questionBo;
	}

	public List<Question> getqList() {
		return qList;
	}

	public void setqList(List<Question> qList) {
		this.qList = qList;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	@Override
	public Question getModel() {
		return question;
	}

	public String home(){
		return "success";
	}
	
	public String add(){
		if(question.getMsg()!=null){
			questionBo.add(question);
		}
		return "success";
	}
}
