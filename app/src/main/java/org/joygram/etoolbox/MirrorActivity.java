package org.joygram.etoolbox;

import android.content.Intent;
import android.os.Build;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;

import com.yotadevices.sdk.Epd;
import com.yotadevices.sdk.EpdIntentCompat;
import com.yotadevices.sdk.EpdManager;
import com.yotadevices.sdk.utils.RotationAlgorithm;


public class MirrorActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mirror);
        yotaMirror();
    }

    public void switchScreen() {
        Intent switch_intent = getPackageManager().getLaunchIntentForPackage("com.android.screenswitch");
        if (switch_intent != null) {
            startActivity(switch_intent);
        }
    }

    public void launchHome() {
        // run main launcher
        Intent main_intent = new Intent(Intent.ACTION_MAIN);
        main_intent.addCategory(Intent.CATEGORY_HOME);
        main_intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        startActivity(main_intent);
    }

    public void yotaMirror() {
        if (true == MainPreferenceManager.m_is_mirroring) {
            MainPreferenceManager.m_is_mirroring = false;
            //switchScreen();
            Log.i("org.joygram.etoolbox", "STOP MIRRORING");
            EpdManager.getInstance().stopMirroring();
        } else {
            Epd.setUpdateMode(getWindow().getDecorView().getRootView(), Epd.UPDATE_MODE_ADAPTIVE);
            String device_name = "START MIRRORING device_name:" + Build.MODEL;
            Log.i("org.joygram.etoolbox", device_name);
            MainPreferenceManager.m_is_mirroring = true;
            EpdManager.getInstance().startMirroring();
        }

        launchHome();
    }

    @Override
    public void onStart() {
        super.onStart();
    }

    @Override
    public void onResume() {
        super.onResume();
    }
}
