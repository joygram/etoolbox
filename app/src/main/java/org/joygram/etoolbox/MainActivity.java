package org.joygram.etoolbox;

import android.content.Intent;
import android.os.Build;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;

import static android.view.View.GONE;


public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        Log.i("main", "--- start ---");
        Intent service = new Intent(this, MainService.class);
        startService(service);
        finish();
    }

    @Override
    public void onStart() {
        super.onStart();
    }

}
