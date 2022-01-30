package com.example.acsplit;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;

public class kerusakan extends AppCompatActivity {

    ImageView back;
    TextView kerusakan1, kerusakan2, kerusakan3;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_kerusakan);

        back = findViewById(R.id.back);
        kerusakan1 = findViewById(R.id.kerusakan1);
        kerusakan2 = findViewById(R.id.kerusakan2);
        kerusakan3 = findViewById(R.id.kerusakan3);

        back.setOnClickListener(View -> {
            Intent intent = new Intent(kerusakan.this, MainActivity.class);
            startActivity(intent);
            finish();
        });

        kerusakan1.setOnClickListener(View -> {
            Intent intent = new Intent(kerusakan.this,daftar.class);
            startActivity(intent);
            finish();
        });
        kerusakan2.setOnClickListener(View -> {
            Intent intent = new Intent(kerusakan.this,daftar1.class);
            startActivity(intent);
            finish();
        });
        kerusakan3.setOnClickListener(View -> {
            Intent intent = new Intent(kerusakan.this,daftar2.class);
            startActivity(intent);
            finish();
        });
    }
}