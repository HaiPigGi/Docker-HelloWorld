public class HelloArgv {
public static void main(String[] args) {
System.out.printf("Hello, World...");
for(int i=0; i<args.length; i++)
System.out.printf(" " + args[i]);
System.out.println();
}
}