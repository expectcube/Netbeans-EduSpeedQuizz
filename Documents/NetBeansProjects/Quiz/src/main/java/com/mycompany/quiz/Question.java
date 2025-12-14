/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.quiz;

/**
 *
 * @author oreoc
 */
public class Question {
    private int id;
    private String pertanyaan;
    private String opsiA, opsiB, opsiC, opsiD;
    private char jawabanBenar;

    public Question(int id, String pertanyaan, String opsiA, String opsiB, String opsiC, String opsiD, char jawabanBenar) {
        this.id = id;
        this.pertanyaan = pertanyaan;
        this.opsiA = opsiA;
        this.opsiB = opsiB;
        this.opsiC = opsiC;
        this.opsiD = opsiD;
        this.jawabanBenar = jawabanBenar;
    }

    // Getters
    public int getId() { return id; }
    public String getPertanyaan() { return pertanyaan; }
    public String getOpsiA() { return opsiA; }
    public String getOpsiB() { return opsiB; }
    public String getOpsiC() { return opsiC; }
    public String getOpsiD() { return opsiD; }
    public char getJawabanBenar() { return jawabanBenar; }
}
