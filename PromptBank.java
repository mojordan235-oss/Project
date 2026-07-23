package projects;

import java.util.Random;
import java.util.random.*;
public class PromptBank {

	String[] questions;
	String [] statements;


	public PromptBank () {
		questions=new String[5]; //initialize your array to the correct length to match your number of questions you pop
		statements=new String[5]; //initialize your array to the correct length to match your number of questions you pop
	}
    public void populateStatementsArray () {
			statements [0]="Tell me more about BLANK1 and BLANK2.";
			statements [1] ="BLANK1 seems important to you, so does BLANK2. Please tell me more.";
			statements [2] ="BLANK1 and BLANK2 seem to be on your mind. Let's talk about it.";
			statements [3]="BLANK1 is better than BLANK2.";
			statements [4]="BLANK2 is smarter than BLANK1.";
    }

	public void populateQuestionsArray() {
		    questions [0] = "Is there anything else about BLANK1 and BLANK2?";
		    questions [1] = "Does BLANK1 bother you? How about BLANK2?";
			questions [2] = "Are BLANK1 and BLANK2 things you think about often?";
			questions [3] ="Which are better BLANK1 or BLANK2?";
			questions [4]="What is difference between BLANK1 and BLANK2?";
	}
    public String getRandomStatementTrunk() {
			Random rand=new Random();
			populateStatementsArray();
			return statements [rand.nextInt (5)];
    }
		 public String getRandomQuestionTrunk () {
			  Random rand=new Random();
			  populateQuestionsArray();
			  return questions [rand.nextInt(5)];
					
		       }
			  
				}
			
