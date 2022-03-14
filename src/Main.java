public class Main {

    public static void main(String[] args) {
        System.out.println("Hello Docker World!");
        int counter = 0;
        try {
            while (counter < 100) {
                Thread.sleep(2*1000);
                counter++;
                System.out.println("I'm still running! Iteration count: " + counter);
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
