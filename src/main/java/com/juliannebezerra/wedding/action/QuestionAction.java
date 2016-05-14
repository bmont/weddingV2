package com.juliannebezerra.wedding.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.juliannebezerra.wedding.bo.QuestionBo;
import com.juliannebezerra.wedding.model.Question;
import com.juliannebezerra.wedding.model.User;
import com.opensymphony.xwork2.ModelDriven;

public class QuestionAction  {

	Question question;
	List<Question> qList = new ArrayList<Question>();
	
	Long userId;
	QuestionBo questionBo;
	
	public QuestionBo getQuestionBo() {
		return questionBo;
	}

	public void setQuestionBo(QuestionBo questionBo) {
		this.questionBo = questionBo;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
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


	public String add(){
		if(question.getMsg()!=null){
			question.setCreateDate(new Date());
			if(question.getUserId()!=null && question.getUserId()> 0){
				question.setEmail("USER LOGGED");
			}
			questionBo.add(question);
		}
		return "success";
	}
}
