package com.example.acsplit;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class tentangpakar extends AppCompatActivity {
    TextView back;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tentangpakar);

        back = findViewById(R.id.back);

        back.setOnClickListener(view -> {
            Intent intent = new Intent(tentangpakar.this, tentang.class);
            startActivity(intent);
            finish();
        });
    }
}