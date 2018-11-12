package org.joygram.etoolbox;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Display;

import com.yotadevices.sdk.EpdManager;


public class MirrorActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mirror);


//        com.yotadevices.sdk.Epd epd = new com.yotadevices.sdk.utils.RotationAlgorithm();
//        com.yotadevices.sdk.EpdIntentCompat.setEpdFlags()

//        Display display =
//        com.yotadevices.sdk.Epd.isEpdDisplay();
//
//        Intent main_intent = new Intent(Intent.ACTION_MAIN);
//        main_intent.addCategory(Intent.CATEGORY_HOME);
//        main_intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);

//        EpdIntentCompat.setEpdFlags(main_intent, EpdIntentCompat.FLAG_ACTIVITY_KEEP_ON_EPD_SCREEN);
//        startActivity(main_intent);

    }

    @Override
    public void onStart()
    {
        EpdManager.getInstance().startMirroring();

        super.onStart();
    }

    @Override
    public void onResume()
    {
        super.onResume();
    }
}
