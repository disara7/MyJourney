package com.example.myjourney;

import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterViewFlipper;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    AdapterViewFlipper flipper;
    ArrayList<AdapterFlipperModel> flipper_data;
    AdapterFlipper_BaseAdapter flipper_baseadapter;

    CardView amritsar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        flipper = findViewById(R.id.adapter_flipper_home); //main flipper of the home which would be shown in application

        flipper_data = new ArrayList<>();

        //Adding items to flipper_data arraylist.
        flipper_data.add(new AdapterFlipperModel("Taj Mahal", "Agra", R.drawable.agra_taj_mahal)); //setting values to the items which were in the constructor of model adpater java class
        flipper_data.add(new AdapterFlipperModel("Akshardham Temple", "Delhi", R.drawable.new_delhi_akshardham_temple));
        flipper_data.add(new AdapterFlipperModel("Amritsar Golden Temple", "Amritsar", R.drawable.amritsar_golden_temple));
        flipper_data.add(new AdapterFlipperModel("Lake Pichola", "Udaipur", R.drawable.udaipur_lake_pichola));
        flipper_data.add(new AdapterFlipperModel("Victoria Memorial Hall", "Kolkata", R.drawable.kolkata_victoria_memorial_hall));

        //Setting the adapter
        flipper_baseadapter = new AdapterFlipper_BaseAdapter(this, flipper_data);
        flipper.setAdapter(flipper_baseadapter);

        //Few settings for controlling the flipper
        flipper.setAutoStart(true); //start when the application starts without the user click.
        flipper.setFlipInterval(3000); //3000 milliseconds = 3 seconds.

        amritsar = findViewById(R.id.amritsar_home);
        amritsar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(MainActivity.this, City_Information.class));
            }
        });

    }
}