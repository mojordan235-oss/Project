package projects;

import java.util.Scanner;

public class MyCalcuator {


	public static void main(String []args) {
		Scanner scnr= new Scanner(System.in);
		boolean doIContinue=true;

		do {
			System.out.println("Enter the calcuator mode: Standard/Scientifc?");
			String mode=scnr.next();

			switch(mode) {
			case "Standard":

				System.out.println("The calcuator will operate in standard mode.");
				System.out.println("Enter '+' for addition," +
						"'-' for subtractions,"+ "Enter '*' for multiplication, '/' for division");
				mode=scnr.next();

				while(!mode.equals("+")&&!mode.equals("-")&&!mode.equals("*")&&!mode.equals("/")) {


					System.out.println("Invalid mode operator"+ mode);
					System.out.println("The calcuator will operate in standard mode.");
					System.out.println("Enter '+' for addition," +
							"'-' for subtractions,"+ "Enter '*' for multiplication, '/' for division");
					mode=scnr.next();
				}
				if(mode.equals("+")) {
					System.out.println("How many numbers you want add?");
					int num= scnr.nextInt();
					System.out.println("Enter "+ num + "numbers");
					double sum=0;
					for(int i=0; i<num; i++) {
						double number=scnr.nextDouble();
						sum=sum+number;

					}
					System.out.println("Result:"+sum);
				}
				else if(mode.equals("-")) {
					System.out.println("How many numbers you want subtract?");
					int num= scnr.nextInt();
					System.out.println("Enter "+ num + "numbers");
					double difference=0;
					for(int i=0; i<num; i++) {
						double number=scnr.nextDouble();

						if(i==0) {
							difference=number;
						}else {
							difference=difference-number;
						}

					}
					System.out.println("Result:"+difference);
				}
				else if(mode.equals("*")) {
					System.out.println("How many numbers you want mulipty?");
					int num= scnr.nextInt();
					System.out.println("Enter "+ num + "numbers");
					double product=1;
					for(double i=1; i<=num; i++) {
						double number=scnr.nextDouble();
						product=product*number;
					} 
					System.out.println("Result"+product);

				}
				else if(mode.equals("/")) {
					System.out.println("How many numbers you want divide?");
					int num= scnr.nextInt();
					System.out.println("Enter "+ num + "numbers");
					double quotient=1;
					for(int i=0; i<=num; i++) {
						if(i==0) {
							double number=scnr.nextDouble();
							continue;
						} 
						double number=scnr.nextDouble();
						quotient=quotient/number;
					}
					System.out.println("Result:"+quotient);
				}
				System.out.println("Do you want to start over? (Y/N)");
				mode=scnr.next();

				if(mode.equals("Y")) {
					doIContinue=true;
				}
				else {
					if(mode.equals("N"))
						doIContinue=false;
					System.out.println("GoodBye");
				}
			
			break;
		
	 case "Scientific":

		System.out.println("The calcuator will operate in scientific mode.");
		
		System.out.println("Enter '+' for addition," +
				"'-' for subtractions,"+ "Enter '*' for multiplication, '/' for division, 'sin' for sin x,"
				+ "'cos' for cos x, 'tan for tan x:");
		mode=scnr.next();

		while(!mode.equals("+")&&!mode.equals("-")&&!mode.equals("*")&&!mode.equals("/")
				&&!mode.equals("cos")&&!mode.equals("sin") && !mode.equals("tan")) {



			System.out.println("Invalid mode operator"+ mode);
			System.out.println("The calcuator will operate in standard mode.");
			System.out.println("Enter '+' for addition," +
					"'-' for subtractions,"+ "Enter '*' for multiplication, '/' for division");
			mode=scnr.next();
		}
		if(mode.equals("+")) {
			System.out.println("How many numbers you want add?");
			int num= scnr.nextInt();
			System.out.println("Enter "+num + "numbers");
			double sum=0;
			for(int i=0; i<num; i++) {
				double number=scnr.nextDouble();
				sum=sum+number;

			}
			System.out.println("Result:"+sum);
		}
		else if(mode.equals("-")) {
			System.out.println("How many numbers you want subtract?");
			int num= scnr.nextInt();
			System.out.println("Enter "+num + "numbers");
			double difference=0;
			for(int i=0; i<num; i++) {
				double number=scnr.nextDouble();

				if(i==0) {
					difference=number;
				}else {
					difference=difference-number;
				}

			}
			System.out.println("Result:"+difference);
		}
		else if(mode.equals("*")) {
			System.out.println("How many numbers you want mulipty?");
			int num= scnr.nextInt();
			System.out.println("Enter "+num + "numbers");
			double product=1;
			for(double i=1; i<=num; i++) {
				double number=scnr.nextDouble();
				product=product*number;
			} 
			System.out.println("Result"+product);

		}
		else if(mode.equals("/")) {
			System.out.println("How many numbers you want divide?");
			int num= scnr.nextInt();
			System.out.println("Enter "+num + "numbers");
			double quotient=1;
			for(int i=0; i<=num; i++) {
				if(i==0) {
					double number=scnr.nextDouble();
					continue;
				} 
				double number=scnr.nextDouble();
				quotient=quotient/number;
			}
			System.out.println("Result:"+quotient);
		}

		else if (mode.equals("cos")) {
			System.out.println("Enter a number in radians to find the cosine");
			double num=scnr.nextDouble();
			num=Math.cos(num);
			System.out.println("Result:"+ num);
		}
		else if (mode.equals("sin")) {
			System.out.println("Enter a number in radians to find the sine");
			double num=scnr.nextDouble();
			num=Math.sin(num);
			System.out.println("Result:"+ num);
		}
		else if (mode.equals("tan")) {
			System.out.println("Enter a number in radians to find the tangent");
			double num=scnr.nextDouble();
			num=Math.tan(num);
			System.out.println("Result:"+ num);
		}
		System.out.println("Do you want to start over? (Y/N)");
		mode=scnr.next();

		if(mode.equals("Y")) {
			doIContinue=true;
		}
		else {
			if(mode.equals("N")) {
				
			doIContinue=false;
			System.out.println("GoodBye");
			}
		}
			}
	}while(doIContinue);
	}
}
