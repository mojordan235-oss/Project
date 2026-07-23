package projects;

import java.util.Scanner;

public class ProjectEliza {


	public static void main(String[] args) {
		Scanner scan=new Scanner(System.in);
		PromptBank mo=new PromptBank();
		boolean doIContinue = true;
		System.out.println("Hello, my name is Eliza. What is your name?");
		String name=scan.next();
		System.out.println("Hello, "+name+". Tell me what is on your mind today in 1 sentence.");
		name=scan.nextLine();
		
		do {
			String x[]=name.split(" ");
			String FirstWord=x[0];
			String LastWord=x[x.length-1];
			
			if (name.charAt(name.length()-1)=='?') {
				System.out.println (replaceWord(mo.getRandomQuestionTrunk(), FirstWord, LastWord));
				name=scan.nextLine();

			}
			else if (name.charAt(name.length()-1)=='.') {
				System.out.println (replaceWord(mo.getRandomStatementTrunk(), FirstWord, LastWord));
				name=scan.nextLine();
			}
			else if (name.charAt(name.length()-1)== '!') {
				System.out.println("WOW! Dramatic! "+replaceWord(mo.getRandomStatementTrunk (), FirstWord, LastWord));
				name=scan.nextLine();
			}	
			if (name.equalsIgnoreCase ("EXIT")) {
				System.out.println("Do you want to run the session again?");
				name=scan.nextLine();
				if (name.equalsIgnoreCase ("No")) {
					doIContinue=false;
					System.out.print ("Goodbye, until next time");
				}
				if (name.equalsIgnoreCase ("Yes")) {
					System.out.println("Hello, my name is Eliza. What is your name?");
					name=scan.nextLine();
					System.out.println("Hello, "+name+". Tell me what is on your mind today in 1 sentence.");
					name=scan.nextLine();
				} 
			}	
		}while (doIContinue=true);
	}
		public static String replaceWord (String y, String FirstWord, String LastWord) {
			PromptBank mo=new PromptBank();
			String z=y.replace("BLANK",FirstWord);
		    String a=z.replace("BLANK",LastWord.substring(0, LastWord.length()-1));
			return a;
			
	}
}