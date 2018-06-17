package org.joygram.etoolbox;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class MainServiceReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(Intent.ACTION_BOOT_COMPLETED)) {

            MainPreferenceManager.m_prefs = context.getSharedPreferences(
                    "org.joygram.etoolbox_preferences",
                    Context.MODE_PRIVATE);
            MainPreferenceManager.getPreferencesData();

            if (MainPreferenceManager.m_auto_start) {
                context.startService(new Intent(context, MainService.class));
            }

        }
    }
};
