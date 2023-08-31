import java.util.Scanner;
import java.time.LocalTime;
interface Alarm
{
    //Abstract method with String parameter
    public abstract void setAlarm(String time);
    //Abstract method with no parameter

    public abstract void showAlarm();
}

//Abstract clas that implements the interface class Alarm
abstract class Weekday implements Alarm{
}

//Monday class extends a parent class
public class Monday extends Weekday{
    String time;
    //Updating the abstract method with String parameter
    public void setAlarm(String time){
    this.time = time;
    }
    //Using the abstract method with no parameter
    public void showAlarm(){
        LocalTime alarm = LocalTime.parse(time);
        LocalTime now = LocalTime.now();
        if (alarm.isBefore(now))
        System.out.print("Alarm is set for tomorrow!\n");
        else if (alarm.isAfter(now))
        System.out.print("I'll wake you up later!\n");
    }
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        Monday mon = new Monday();
        
        try{
        boolean bol = true;
        
        while(bol){
        System.out.print("Enter time for alarm in this format (HH:MM): ");
        String input = sc.nextLine();
        if (input.equals("")) {
        System.out.print("Invalid input please try again..\n\n");
            }
        
        else{
            //Accessing the setAlarm method
            mon.setAlarm(input);
            //Accessing the showAlarm method
            mon.showAlarm();
            bol=!bol;
                }
            }
        }
        catch(Exception e){
            System.out.print("Invalid input please try again..");
        }
    }
}
