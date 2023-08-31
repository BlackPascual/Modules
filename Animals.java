import java.util.*;


abstract class Animal {
        public abstract void eat();
        public abstract void sleep();
        public abstract void makeSound();
}


class Dog extends Animal {

        @Override
        public void eat() {
                System.out.print("Dog love to eat chicken ");
        }

        @Override
        public void sleep() {
                System.out.println("and sleep for 6- hours a day");
        }

        @Override
        public void makeSound() {
                System.out.println("Bow bow bow");
        }

}


class Cat extends Animal {

        @Override
        public void eat() {
                System.out.print("Cats love to eat fish ");
        }

        @Override
        public void sleep() {
                System.out.println("and sleep for 8-10 hours a day");
        }

        @Override
        public void makeSound() {
                System.out.println("Meow");
        }

}


class Bird extends Animal {

        @Override
        public void eat() {
                System.out.print("Birds love to eat seeds ");
        }

        @Override
        public void sleep() {
                System.out.println("and sleep for 10-12 hours a day");
        }

        @Override
        public void makeSound() {
                System.out.println("Tweet tweet");
        }

}

public class Animals {

        public static void main(String[] args) {
                
                Scanner sc = new Scanner(System.in);
                
                System.out.print("Choose an animal. Press B for Bird, C for Cat, D for Dog : ");
                
                String animal = sc.nextLine();
                
                if(animal.equalsIgnoreCase("B")) {
                        Bird b = new Bird();
                        b.eat();
                        b.sleep();
                        b.makeSound();
                } else if(animal.equalsIgnoreCase("C")) {
                        Cat c = new Cat();
                        c.eat();
                        c.sleep();
                        c.makeSound();
                } else if(animal.equalsIgnoreCase("D")) {
                        Dog d = new Dog();
                        d.eat();
                        d.sleep();
                        d.makeSound();
                }
        }

}
