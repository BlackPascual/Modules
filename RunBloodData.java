import java.util.*;
class BloodData{
    private String bloodType, rhFactor;
        public BloodData() {
            bloodType = "O";
            rhFactor = "+";
        }
    public void setBloodType(String bloodType){
        this.bloodType = bloodType;
    }
    public void setRhFactor(String rhFactor){
        this.rhFactor = rhFactor;
    }
    public String getBloodType(){
        return bloodType;
    }
    public String getRhFactor(){
        return rhFactor;
    }
    public void display(){
        System.out.println(getBloodType() + getRhFactor() + " is added to the blood bank.\n");
    }
}

public class RunBloodData{
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);
        boolean con = false;
            while(!con){
            System.out.print("Enter blood type of a patient: ");
            String input1 = scan.nextLine().toUpperCase();
            System.out.print("Enter the Rhesus factor (+ or -): ");
            String input2 = scan.nextLine();
            
            if (input1.equals("") && input2.equals("")){
                BloodData bd = new BloodData();
                bd.display();
            }
            
            else{
                BloodData bd = new BloodData();
                bd.setBloodType(input1);
                bd.setRhFactor(input2);
                bd.display();
                con = !con;
            }
        }
    }
}
