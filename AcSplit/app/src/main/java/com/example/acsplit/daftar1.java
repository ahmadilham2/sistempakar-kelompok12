package com.example.acsplit;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;

public class daftar1 extends AppCompatActivity {
    ImageView back;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_daftar1);


        back = findViewById(R.id.back);


        back.setOnClickListener(View -> {
            Intent intent = new Intent(daftar1.this, kerusakan.class);
            startActivity(intent);
            finish();
        });
    }
}