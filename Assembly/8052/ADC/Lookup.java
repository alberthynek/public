public class Lookup {

     public static void main(String []args){
        generate();
     }



public static void generate() {
    for (int adc=0; adc<1024; adc++){
        double t = (adc*0.136553)-40;
        t = Math.round(t*10);
        String T = String.format("%04d", (int)t);
        String ADC = String.format("%04d", adc);
        System.out.println("dw " + T +" ; "+ ADC + "D");
    }
}

}