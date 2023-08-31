import java.util.*;
/**
 *
 * 
 */
interface Graphic {
    public void move (int x, int y);
    public void draw();
}

class Dot implements Graphic {
public int x;
public int y;

    public Dot (int x, int y){
        this.x = y;
        this.y = y;
    }
    
    @Override
    public void move(int x, int y){
        this.x += y;
        this.y += y;
    }
    
    @Override
    public void draw(){
        System.out.println("Draw dot.");
    }
}

class CompoundGraphic implements Graphic{
    int x;
    int y;
    private ArrayList <Graphic> children = new ArrayList<>();
    
    public void add(Graphic child){
    children.add(child);
    }
    public void remove(Graphic child){
    children.remove(child);
    }
    
    @Override
    public void move(int x, int y){
        this.x += y;
        this.y += y;
    }
    
    @Override
    public void draw(){
        System.out.println("Draw Compound Graphic.");
    }
}

class Circle extends Dot{
    double radius;
    public Circle (int x, int y, double radius){
    super(x,y);
    this.radius = radius;
    }
    
    @Override
    public void draw(){
        System.out.println("Draw Circle.");
    }
}
public class ImageEditor {
    public static void main(String[] args) {
        
        Dot dot = new Dot (10, 20);
        dot.move(23, 15);
        dot.draw();
        
        Circle circle = new Circle (24, 32, 15);
        circle.draw();
        
        CompoundGraphic compGraph = new CompoundGraphic();
        compGraph.add(dot);
        compGraph.remove(circle);
        compGraph.move(42, 23);
        compGraph.draw();
    }
    
}
