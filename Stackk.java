/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jeylewis;

/**
 *
 * @author Caleb Lonzanida
 */

import java.util.*;
import javax.swing.*;

public class Stackk {
    static Queue<String> q;
 
    // Utility function to print the queue
    static void Print()
    {
        while (!q.isEmpty()) {
            System.out.print( q.peek() + ", ");
            q.remove();
        }
    }
 
    // Function to reverse the queue
    static void reversequeue()
    {
        Stack<String> stack = new Stack<>();
        while (!q.isEmpty()) {
            stack.add(q.peek());
            q.remove();
        }
        while (!stack.isEmpty()) {
            q.add(stack.peek());
            stack.pop();
        }
    }
    public static void main(String[] args){
        
        Scanner scan = new Scanner(System.in);
        q = new LinkedList<String>();
        
        System.out.println("Enter four(4) book titles.");
        System.out.print("Book 1: ");
        String one = scan.nextLine();
        q.add(one);
        
        System.out.print("Book 2: ");
        String two = scan.nextLine();
        q.add(two);
        
        System.out.print("Book 3: ");
        String three = scan.nextLine();
        q.add(three);
        
        System.out.print("Book 4: ");
        String four = scan.nextLine();
        q.add(four);
        
        reversequeue();
        Print();
        
    }
    
}
