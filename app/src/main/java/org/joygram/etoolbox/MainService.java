package org.joygram.etoolbox;

import android.app.ActivityManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.os.IBinder;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;

import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.TextView;

import android.util.Log;

import com.yotadevices.sdk.EpdManager;

import java.util.List;



class TimerThread implements Runnable{
    MainService m_main_service ;

    public TimerThread(MainService main_service) {
        m_main_service = main_service;
    }
    boolean m_running = false;

    public void run()
    {
        m_running = true;
        while(true == m_running)
        {
            MainPreferenceManager.getPreferencesData();
            int sleep_time = MainPreferenceManager.m_timeout * 1000;

            try {
                Thread.sleep(sleep_time);
                if (null != m_main_service) {
                    if (true == MainPreferenceManager.m_use_timer) {

                        if (false == m_main_service.isSkipPackage())
                        {
                            m_main_service.callRefresh();
                        }
                    }
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}


public class MainService extends Service implements OnTouchListener, OnClickListener {

    public MainService() {
    }

    String m_logger_name = "org.joygram.etoolbox";

    private WindowManager m_wm;
    private Button m_overlay_button;

    WindowManager.LayoutParams m_main_view_param;
    private float offsetX;
    private float offsetY;
    private int originalXPos;
    private int originalYPos;
    private boolean moving;
    private View m_top_left_view;

    TextView m_touch_view;
    int m_touch_count = 0;

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {

        Log.i("org.joygram.etoolbox", "onCreate");

        MainPreferenceManager.m_prefs = getApplicationContext().getSharedPreferences("org.joygram.etoolbox_preferences", Context.MODE_PRIVATE);
        MainPreferenceManager.getPreferencesData();

        super.onCreate();
        m_wm = (WindowManager) getSystemService(Context.WINDOW_SERVICE);


        // create button
        m_overlay_button = new Button(this);
        m_overlay_button.setText("+");
        m_overlay_button.setOnTouchListener(this);

        //m_overlay_button.setAlpha(0.3f);
        m_overlay_button.setBackgroundColor(0x00ffffff);
        m_overlay_button.setOnClickListener(this);
        //WindowManager.LayoutParams params = new WindowManager.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.TYPE_SYSTEM_ALERT, WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL, PixelFormat.TRANSLUCENT);
        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                100,
                100,
                WindowManager.LayoutParams.TYPE_SYSTEM_ALERT,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
                PixelFormat.TRANSLUCENT);

        params.gravity = Gravity.LEFT | Gravity.TOP;
        params.x = 910;//20;
        params.y = 1280; //20;
        m_wm.addView(m_overlay_button, params);


        // create overlay view
        m_top_left_view = new View(this);
        WindowManager.LayoutParams topLeftParams = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.TYPE_SYSTEM_ALERT,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE |
                WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
                PixelFormat.TRANSLUCENT);
        topLeftParams.gravity = Gravity.LEFT | Gravity.TOP;
        topLeftParams.x = 0;
        topLeftParams.y = 0;
        topLeftParams.width = 0;
        topLeftParams.height = 0;
        m_wm.addView(m_top_left_view, topLeftParams);


        m_touch_view = new TextView(this);
        m_touch_view.setOnTouchListener(this);
        WindowManager.LayoutParams touch_params = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.TYPE_SYSTEM_ALERT,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE |
                        WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH,
                PixelFormat.TRANSLUCENT);
        m_wm.addView(m_touch_view, touch_params);

        Thread timer = new Thread(new TimerThread(this));
        timer.start();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (m_overlay_button != null) {
            m_wm.removeView(m_overlay_button);
            m_wm.removeView(m_top_left_view);
            m_wm.removeView(m_touch_view);

            m_overlay_button = null;
            m_top_left_view = null;
            m_touch_view = null;
        }
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {


        if (event.getAction() == MotionEvent.ACTION_DOWN) {
            Log.i(m_logger_name, "action_down");

            float x = event.getRawX();
            float y = event.getRawY();

            moving = false;

            int[] location = new int[2];
            m_overlay_button.getLocationOnScreen(location);

            originalXPos = location[0];
            originalYPos = location[1];

            offsetX = originalXPos - x;
            offsetY = originalYPos - y;

        } else if (event.getAction() == MotionEvent.ACTION_MOVE) {

            Log.i(m_logger_name, "action move");


            int[] topLeftLocationOnScreen = new int[2];
            m_top_left_view.getLocationOnScreen(topLeftLocationOnScreen);

            float x = event.getRawX();
            float y = event.getRawY();

            WindowManager.LayoutParams params = (WindowManager.LayoutParams) m_overlay_button.getLayoutParams();

            int newX = (int) (offsetX + x);
            int newY = (int) (offsetY + y);

            if (Math.abs(newX - originalXPos) < 15 && Math.abs(newY - originalYPos) < 15 && !moving) {
                System.out.println("not moving, skip");

                return false;
            }

            params.x = newX - (topLeftLocationOnScreen[0]);
            params.y = newY - (topLeftLocationOnScreen[1]);

            m_wm.updateViewLayout(m_overlay_button, params);
            Log.i(m_logger_name, String.format("%d, %d", params.x, params.y));
            moving = true;

        } else if (event.getAction() == MotionEvent.ACTION_UP) {
            if (moving) {
                return true;
            }

        } else {

            if (isSkipPackage())
            {
                return false;
            }

            m_touch_count++;
            if (m_touch_count >= MainPreferenceManager.m_touch_count) {
               callRefresh();
            }
            //Log.i(m_logger_name, String.format("onTouch %d", m_touch_count++ ));
        }

        return false;
    }

    public boolean isSkipPackage()
    {
        if( isForegroundPackage("org.joygram.etoolbox")
                || isForegroundPackage("launcher"))
        {
            return true;
        }

        return false;
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.i(m_logger_name, "--- start command ---");
        callRefresh();


        return super.onStartCommand(intent, flags, startId);
    }

    @Override
    public void onClick(View v) {
        Log.i(m_logger_name, "onclicked");
        callRefresh();
    }

    String getForegroundPackageName()
    {
        ActivityManager manager = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
        List<ActivityManager.RunningAppProcessInfo> infos = manager.getRunningAppProcesses();
        ActivityManager.RunningAppProcessInfo info = infos.get(0);

        Log.i(m_logger_name, String.format("package name:%s", info.processName));

        return info.processName;
    }

    boolean isForegroundPackage(String package_name) {

        return getForegroundPackageName().contains(package_name);
    }

    public void callRefresh()
    {
        InputMethodManager imm = (InputMethodManager)getSystemService(Context.INPUT_METHOD_SERVICE);
        if (imm.isAcceptingText())
        {
            Log.i(m_logger_name, String.format("on input just skip refresh"));
            return;
        }

        Log.i(m_logger_name, String.format("call refresh"));

        for (int i = 0; i < 4; ++i)
        {
            Intent intent = new Intent(this, FullscreenActivity.class);
            intent.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION
                    | Intent.FLAG_ACTIVITY_NEW_TASK);

            startActivity(intent);
        }
        m_touch_count = 0;
    }

}
