class Base {
    String msg;

    Base() {
        this.fn();
        this.msg = "base";
    }

    void fn() {
         System.out.println("Base:");
         for (StackTraceElement ste : Thread.currentThread().getStackTrace()) {
            System.out.println(ste);
        }
    }
}

class Derived extends Base {
    Derived() {
        super();
        this.msg = "derived";
    }

    @Override
    void fn() {
         System.out.println("Derived:");
         for (StackTraceElement ste : Thread.currentThread().getStackTrace()) {
            System.out.println(ste);
        }
    }
}

class Main {
    public static void main(String[] args) {
        new Derived();
    }
}
