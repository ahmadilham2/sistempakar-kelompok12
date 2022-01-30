package com.example.acsplit;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;


public class MainActivity extends AppCompatActivity {

    ImageView btn1,btn2,btn3;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btn1 = findViewById(R.id.diagnosa);
        btn2 = findViewById(R.id.daftar);
        btn3 = findViewById(R.id.tentang);

        btn1.setOnClickListener(view -> {
            Intent intent = new Intent(MainActivity.this, Pertanyaan_1.class);
            intent.putExtra("id","G001");
            startActivity(intent);
            finish();
        });
        btn2.setOnClickListener(view -> {
            Intent i = new Intent(MainActivity.this, kerusakan.class);
            startActivity(i);
        });
        btn3.setOnClickListener(View -> {
            Intent intent = new Intent(MainActivity.this, tentang.class);
            startActivity(intent);
            finish();
        });

    }
}