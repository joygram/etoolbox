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

    }

    public void yotaMirror()
    {
        if (true == MainPreferenceManager.m_is_mirroring)
        {
            MainPreferenceManager.m_is_mirroring = false;
            EpdManager.getInstance().stopMirroring();
            Log.i("org.joygram.etoolbox", "stop mirroring";
            return;
        }

        String device_name = " device_name:" + Build.MODEL + " start mirroring";
        Log.i("org.joygram.etoolbox", device_name);

        MainPreferenceManager.m_is_mirroring = true;
        EpdManager.getInstance().startMirroring();
        EpdManager.getInstance().lockEpd();
    }

    @Override
    public void onStart()
    {
        yotaMirror();
        super.onStart();
    }

    @Override
    public void onResume()
    {
        super.onResume();
    }
}
