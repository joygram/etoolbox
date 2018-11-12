package org.joygram.etoolbox;

//import android.os.Build;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
//import android.view.View;
//import android.view.WindowManager;

import com.onyx.android.sdk.api.device.epd.EpdController;
import com.onyx.android.sdk.api.device.epd.UpdateMode;



public class FullscreenActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_fullscreen);
        EpdController.invalidate(getWindow().getDecorView().findViewById(android.R.id.content), UpdateMode.GC4);
    }

    @Override
    public void onStart()
    {
        EpdController.invalidate(getWindow().getDecorView().findViewById(android.R.id.content), UpdateMode.GC4);
        onBackPressed();


        super.onStart();

        finish();
    }
}
