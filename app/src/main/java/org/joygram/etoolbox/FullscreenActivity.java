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


class TimerThread implements Runnable{
    FullscreenActivity m_activity;

    public TimerThread(FullscreenActivity activity) {
        m_activity = activity;
    }

    public void run()
    {
        try {
            Thread.sleep(300);
            if (null != m_activity){
                m_activity.finish();
                Log.i("", "activity finished");
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }
}


public class FullscreenActivity extends AppCompatActivity {
//    LocalBroadcastManager m_local_broadcast_manager;
//    IntentFilter intent_filter = new IntentFilter();

//    BroadcastReceiver m_broadcast_receiver = new BroadcastReceiver() {
//        @Override
 //       public void onReceive(Context context, Intent intent) {
 //           if (intent.getAction().equals("org.jogyram.etoolbox.action.close")) {
 //               finish();
 //           }
 //       }
 //   };


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_fullscreen);
        EpdController.invalidate(getWindow().getDecorView().findViewById(android.R.id.content), UpdateMode.GC4);

//        m_local_broadcast_manager = LocalBroadcastManager.getInstance(this);
//        intent_filter.addAction("org.jogyram.etoolbox.action.close");
//        m_local_broadcast_manager.registerReceiver(m_broadcast_receiver, intent_filter);
    }

    @Override
    public void onStart()
    {
        EpdController.invalidate(getWindow().getDecorView().findViewById(android.R.id.content), UpdateMode.GC4);
        onBackPressed();

//       Thread timer = new Thread(new TimerThread(this));
        //timer.start();

        super.onStart();

        finish();
    }
}
