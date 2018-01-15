package org.joygram.etoolbox;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;


public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //setContentView(R.layout.activity_main);
        Log.i("org.joygram.etoolbox", "start ---");
        Intent service = new Intent(this, MainService.class);
        startService(service);
        finish();


    }

}
