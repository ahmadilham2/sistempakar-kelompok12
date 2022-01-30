package com.example.acsplit;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;

public class daftar2 extends AppCompatActivity {
    ImageView back;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_daftar2);

        back = findViewById(R.id.back);

        back.setOnClickListener(View -> {
            Intent intent = new Intent(daftar2.this, kerusakan.class);
            startActivity(intent);
            finish();
        });
    }
}