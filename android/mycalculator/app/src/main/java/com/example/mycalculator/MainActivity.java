package com.example.mycalculator;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {



    private TextView oneTextView;
    private TextView twoTextView;
    private TextView threeTextView;
    private TextView fourTextView;
    private TextView fiveTextView;
    private TextView sixTextView;
    private TextView sevenTextView;
    private TextView eightTextView;
    private TextView nineTextView;
    private TextView zeroTextView;
    private TextView caTextView;
    private TextView plusTextView;
    private TextView minusTextView;
    private TextView resultTextView;

    //이전 눌러졌던 값 + 새로 눌러진 값 --> 표현

   // 1 + 2 = 12   (old + new)

    String oldValue = "0";
    String newValue = "";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initData();
        addEventListener();
    }

    private void initData() {
        oneTextView = findViewById(R.id.one);
        twoTextView = findViewById(R.id.two);
        threeTextView = findViewById(R.id.three);
        fourTextView = findViewById(R.id.four);
        fiveTextView = findViewById(R.id.five);
        sixTextView = findViewById(R.id.six);
        sevenTextView = findViewById(R.id.seven);
        eightTextView = findViewById(R.id.eight);
        nineTextView = findViewById(R.id.nine);
        zeroTextView = findViewById(R.id.zero);
        caTextView = findViewById(R.id.ca);
        plusTextView = findViewById(R.id.plus);
        minusTextView = findViewById(R.id.minus);



        resultTextView = findViewById(R.id.resultTextView);
    }


    private void addEventListener() {
        oneTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //Log.d("TAG",view.toString());
                Log.d("TAG", "one 버튼 눌러졌음!");
                newValue = newValue + "1";

                resultTextView.setText(newValue);
            }
        });

        twoTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("TAG", "two 버튼 눌러졌음!");
                newValue = newValue + "2";

                resultTextView.setText(newValue);
            }
        });

        threeTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("TAG", "three 버튼 눌러졌음!");

                newValue = newValue + "3";

                resultTextView.setText(newValue);
            }
        });

        fourTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("TAG", "four 버튼 눌러졌음!");

                newValue = newValue + "4";

                resultTextView.setText(newValue);
            }
        });

        fiveTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("TAG", "five 버튼 눌러졌음!");

                newValue = newValue + "5";

                resultTextView.setText(newValue);
            }
        });

        sixTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("TAG", "six 버튼 눌러졌음!");

                newValue = newValue + "6";

                resultTextView.setText(newValue);
            }
        });

        sevenTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("TAG", "seven 버튼 눌러졌음!");

                newValue = newValue + "7";

                resultTextView.setText(newValue);
            }
        });

        eightTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("TAG", "eight 버튼 눌러졌음!");

                newValue = newValue + "8";

                resultTextView.setText(newValue);
            }
        });

        nineTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("TAG", "nine 버튼 눌러졌음!");

                newValue = newValue + "9";

                resultTextView.setText(newValue);
            }
        });

        zeroTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("TAG", "zero 버튼 눌러졌음!");

                newValue = newValue + "0";

                resultTextView.setText(newValue);
            }
        });

        caTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("TAG", "ca 버튼 눌러졌음!");

                newValue = "";
                oldValue = "0";
                resultTextView.setText("0");
            }
        });

        plusTextView.setOnClickListener(new View.OnClickListener() {
            //100 < ---
            // 123 < ---

            @Override
            public void onClick(View view) {

//                int num2 = Integer.parseInt(oldValue);
//                int num1 = Integer.parseInt(newValue);
//                int sum = num1 + num2;

                if(newValue.equals("")){
                    newValue = "0";
                }

                int sum = Integer.parseInt(oldValue) +Integer.parseInt(newValue);
                oldValue = String.valueOf(sum);
                newValue = "";
                resultTextView.setText(oldValue);

                Log.d("TAG", "new value" + newValue);
                Log.d("TAG", "old value" + oldValue);

            }
        });

        minusTextView.setOnClickListener(new View.OnClickListener() {


            @Override
            public void onClick(View view) {
                if(oldValue.equals("0")){
                    oldValue = newValue;
                    newValue = "";
                    resultTextView.setText("0");
                }else{
                    if(newValue.equals(""))
                        newValue = "0";
                    // oldValue  >>>> 0
                    int num1 = Integer.parseInt(oldValue);
                    // newValue = 10  <<<<< 을입력해서 눌리면
                    int num2 = Integer.parseInt(newValue);
                    int sum = (num1 - num2); // -10이 나옴.
                    oldValue = String.valueOf(sum);
                    newValue = "";
                    resultTextView.setText(oldValue);
                }




//                if(oldValue.equals("")){
//                    oldValue = newValue;
//                    newValue = "0";
//                }else{
//
//                }



                Log.d("TAG", "new value" + newValue);
                Log.d("TAG", "old value" + oldValue);

            }
        });


    }

}