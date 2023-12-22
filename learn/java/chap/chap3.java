package chap;

public class chap3 {
    public static void main(String[] args){
        int grade = 60;
        char level;
        switch (grade/10){
            case 10:
            case 9:
                level = 'A';
                break;
            case 8:
                level = 'B';
                break;
            case 7:
                level = 'C';
                break;
            case 6:
                level = 'D';
                break;
            default:
                level = 'E';
        }
        System.out.println("Grade = " + grade + ", Level = " + level);
    }
}
