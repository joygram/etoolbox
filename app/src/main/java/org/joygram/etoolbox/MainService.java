package org.joygram.etoolbox;

import android.app.Service;
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
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Toast;

import android.util.Log;

import com.onyx.android.sdk.api.device.epd.EpdController;
import com.onyx.android.sdk.api.device.epd.UpdateMode;

public class MainService extends Service implements OnTouchListener, OnClickListener {
    public MainService() {
    }

    private WindowManager m_wm;
    private Button m_overlay_button;

    private float offsetX;
    private float offsetY;
    private int originalXPos;
    private int originalYPos;
    private boolean moving;
    private View m_top_left_view;

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {

        Log.i("org.joygram.etoolbox", "onCreate");

        super.onCreate();
        m_wm = (WindowManager) getSystemService(Context.WINDOW_SERVICE);

        // create button
        m_overlay_button = new Button(this);
        m_overlay_button.setText("REFRESH");
        m_overlay_button.setOnTouchListener(this);
        m_overlay_button.setAlpha(0.5f);
        m_overlay_button.setBackgroundColor(0x55fe4444);
        m_overlay_button.setOnClickListener(this);
        WindowManager.LayoutParams params = new WindowManager.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.TYPE_SYSTEM_ALERT, WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL, PixelFormat.TRANSLUCENT);
        params.gravity = Gravity.LEFT | Gravity.TOP;
        params.x = 0;
        params.y = 0;
        m_wm.addView(m_overlay_button, params);

        // create overlay view
        m_top_left_view = new View(this);
        WindowManager.LayoutParams topLeftParams = new WindowManager.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.TYPE_SYSTEM_ALERT, WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL, PixelFormat.TRANSLUCENT);
        topLeftParams.gravity = Gravity.LEFT | Gravity.TOP;
        topLeftParams.x = 0;
        topLeftParams.y = 0;
        topLeftParams.width = 0;
        topLeftParams.height = 0;
        m_wm.addView(m_top_left_view, topLeftParams);
        Log.i("org.joygram.etoolbox", "add main view");

    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (m_overlay_button != null) {
            m_wm.removeView(m_overlay_button);
            m_wm.removeView(m_top_left_view);
            m_overlay_button = null;
            m_top_left_view = null;
        }
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {

        if (event.getAction() == MotionEvent.ACTION_DOWN) {
            Log.i("org.joygram.etoolbox", "action_down");

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
            Log.i("", "action move");


            int[] topLeftLocationOnScreen = new int[2];
            m_top_left_view.getLocationOnScreen(topLeftLocationOnScreen);

            System.out.println("topLeftY="+topLeftLocationOnScreen[1]);
            System.out.println("originalY="+originalYPos);

            float x = event.getRawX();
            float y = event.getRawY();

            WindowManager.LayoutParams params = (WindowManager.LayoutParams) m_overlay_button.getLayoutParams();

            int newX = (int) (offsetX + x);
            int newY = (int) (offsetY + y);

            if (Math.abs(newX - originalXPos) < 1 && Math.abs(newY - originalYPos) < 1 && !moving) {
                return false;
            }

            params.x = newX - (topLeftLocationOnScreen[0]);
            params.y = newY - (topLeftLocationOnScreen[1]);

            m_wm.updateViewLayout(m_overlay_button, params);
            moving = true;
        } else if (event.getAction() == MotionEvent.ACTION_UP) {
            if (moving) {
                return true;
            }
        }

        return false;
    }

    @Override
    public void onClick(View v) {
        Log.i("", "onclicked");
        EpdController.invalidate(m_main_view, UpdateMode.GC);
    }

}
