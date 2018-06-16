package org.joygram.etoolbox;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/**
 * Created by joygram on 2018-06-16.
 */

public class MainServiceReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(Intent.ACTION_BOOT_COMPLETED)) {

            //context.startService(new Intent(context, MainService.class));
        }
    }
};
