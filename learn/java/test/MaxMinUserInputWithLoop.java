package test;

import java.util.Scanner;

public class MaxMinUserInputWithLoop {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] numbers = new int[3]; // 创建一个长度为3的数组，用于存储输入的整数

        // 引导用户输入三个整数
        System.out.println("请输入三个整数：");
        for (int i = 0; i < numbers.length; i++) {
            System.out.print("输入第 " + (i + 1) + " 个整数：");
            numbers[i] = scanner.nextInt(); // 存储用户输入的整数
        }

        scanner.close(); // 关闭Scanner对象

        // 初始化最大值和最小值为数组的第一个元素
        int max = numbers[0];
        int min = numbers[0];

        // 遍历数组，找出最大值和最小值
        for (int i = 1; i < numbers.length; i++) {
            max = numbers[i] > max ? numbers[i] : max; // 更新最大值
            min = numbers[i] < min ? numbers[i] : min; // 更新最小值
        }

        // 输出最终的最大值和最小值
        System.out.println("最大值：" + max);
        System.out.println("最小值：" + min);
    }
}
