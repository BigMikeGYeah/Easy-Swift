//
//  ViewControllerQuestion.swift
//  swift pro
//
//  Created by chuangke-2 on 2017/8/2.
//  Copyright © 2017年 HY&MG. All rights reserved.
//

import UIKit

class ViewControllerQuestion: UIViewController {
    
    @IBAction func answerButton(_ sender: Any) {
        if let sender = sender as? UIButton{
            sender.isHidden = true
        }
    }
    
    @IBOutlet weak var QuestionView: UITextView!
    
    @IBOutlet weak var answerButton: UIButton!
    
    @IBOutlet weak var answerView: UITextView!
    
    var questionsArray = [Question]()
    
    @IBAction func newQuestionButtonPressed(_ sender: Any) {
        let curQuestion = questionsArray[Int(arc4random_uniform(21))]
        QuestionView.text = curQuestion.question
        answerView.text = curQuestion.answer
        answerButton.isHidden = false
        
        
        
        
    }
    override func viewDidLoad() {
        questionsArray.append(Question(question: "Consider the following situation and figur out it is best to use var or let.  1.Storing information about the number about the number of cars parked in a parking lot daily.  2. Storing the number of units in a apartment conplex", answer: "1.var, 2.let"))
        questionsArray.append(Question(question: "Imagine you are making a form in an app. There will be fields and other user interface elements that accept various types of data. Your app will accept the following information: 1. Your app needs to accept a username and hold it in a variable. What type is best for this variable?  2. Your app needs to accept a password. What type should this be?", answer: "username needs to be a string of characters possibly containing any number of characters, A: String 2.A password like a user name might contain any number of characters. A: String"))
        questionsArray.append(Question(question: "Conceptual Question - Which of the following objects would be better modeled as a class or as a struct?   a. Houses b. Nutrition Information c. Companies d. Points in 3D space (x, y, z)", answer: "A: a. Depends... If this was a game and we were representing houses the player could enter, modify, and decorate then a class would be best -- in this situation the house represents a living object. If this were a realty app for viewing house listings than a struct would suffice. In a realty app we aren't modeling the house itself. We are just creating a container to store data related to it.  b. A Struct. c. Depends... Like the house example it depends on if you are representing a company or information about the company.  d. A Struct. "))
        questionsArray.append(Question(question: "Wake Up, Wash the dishes, Milk the cows...Create an array that contains Strings. Define the initial value of the array so that it contains the following items above.", answer: "var array = [\"Wake Up\",\"Wash the dishes\", \"Milk the cows\"]"))
        questionsArray.append(Question(question: "Define a variable to hold instructors. Set it equal to a Dictionary with String key, a String value.  Add one of the instructors in your track to the dictionary. Use their first name as the key and last name as the value. Repeat this twice more so you have three instructors in the dictionary.", answer: "1.var instructors = [String: String]()     2.instructors[\"Malcolm\"] = \"Reynolds\""))
        questionsArray.append(Question(question: " Define 6 variables that each contain a string. Set the value to any word that matches the variable name: 1. adjective 2.location 3.animal 4.name 5.music genre 6.verb", answer: "1. let adjective = \"long\" 2.let location = \"beach\" 3.let animal = \"pug\" 4.let name = \"coco\" 5.let genre = \"polka\" 6.let verb = \"dance\""))
        
        questionsArray.append(Question(question: "Imagine your app will display a username if available. If no user is signed in you can display their name. This might be a good place for an optional. Define a variable named username, and make it type String? (optional) Print the value of username. You should get nil. Set the value of username to any name. Print username again. You should see something like: Optional(\"Joe\")", answer: "var username: String?   print(username)          username = \"Joe\" print(username)   "))
        questionsArray.append(Question(question: "have you ever played the game called \"Fizz buzzed\", well, let's do this in swift. The rule is: in the range of 1~100, if the number can be divided by 3, print Fizz, if it can be divided by 5, print Buzz, if it can be divided both by 3 and 5, print FizzBuzz", answer: "Figure it out by yourself ;) (note:this includes a logic gate and two selection statements"))
        questionsArray.append(Question(question: "What is your name?", answer: "Sir Lancelot"))
        questionsArray.append(Question(question: "What is your quest?", answer: "I seek the holy grail"))
        questionsArray.append(Question(question: "Can the value of 'let' variables be altered?", answer: "No, once the value is given, it is done"))
        questionsArray.append(Question(question: "Tell one difference between dictionary and list", answer: "For each term in dictionary, it involves one entry and one value; whereas, lists store only the value with the entry automatically indicated by the its position number in the list"))
        questionsArray.append(Question(question: "What is the logic gate that will print 'true' if and only if both of the statements are true?", answer: "The famous 'and' logic gate"))
        questionsArray.append(Question(question: "How to change the value of two variables without help of any additional variables?", answer: "a += b, b = a - b, a -=b"))
        questionsArray.append(Question(question: "How to round a number by manipulating data types?", answer: "Obtain the integer type representation of the decimal number"))
        questionsArray.append(Question(question: "Name three basic strategy of sorting a list of numbers (a bit challenging)", answer: "ex.bubble sort, insertion sort, quick sort, merge sort, shell sort, etc."))
        questionsArray.append(Question(question: "What is the sortcut of conducting an 'if-else' statement with multiple cases?", answer: "The 'switch' structure, exclusively compiled in swift language"))
        questionsArray.append(Question(question: "What is an efficient method to understand the error popped up in your codes?", answer: "copy the error statement and search it on Stackoverflow or CSDN blog"))
        questionsArray.append(Question(question: "What types of data could be stored in a list?", answer: "decimals, lists, integers, booleans,etc. -- very versatile"))
        questionsArray.append(Question(question: "What is wrong with int x = 2?", answer: "'Int' is a basic type of data, and cannot be used to define a variable"))
        questionsArray.append(Question(question: "Where can I find more helpful resources after I finish this introductory tutorial?", answer: "The one and only official site of Makeschool Academy"))
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
