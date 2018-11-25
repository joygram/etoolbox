package org.joygram.etoolbox;

import android.content.Intent;
import android.os.Build;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;

import com.yotadevices.sdk.EpdIntentCompat;
import com.yotadevices.sdk.EpdManager;
import com.yotadevices.sdk.EpdCallbacks;
import com.yotadevices.sdk.EpdUpdateParams;
import com.yotadevices.sdk.utils.RotationAlgorithm;


public class MirrorActivity
		extends AppCompatActivity
		implements com.yotadevices.sdk.EpdCallbacks
{


	@Override
	protected void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_mirror);

		com.yotadevices.sdk.EpdManager.getInstance().registerEpdCallbacks(getApplicationContext(), this);

//        com.yotadevices.sdk.Epd epd = new com.yotadevices.sdk.utils.RotationAlgorithm();
//        com.yotadevices.sdk.EpdIntentCompat.setEpdFlags()

//        Intent main_intent = new Intent(Intent.ACTION_MAIN);
//        main_intent.addCategory(Intent.CATEGORY_HOME);
//        main_intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);

//        EpdIntentCompat.setEpdFlags(main_intent, EpdIntentCompat.FLAG_ACTIVITY_KEEP_ON_EPD_SCREEN);
//        startActivity(main_intent);


		Intent setIntent = new Intent(Intent.ACTION_MAIN);
		setIntent.addCategory(Intent.CATEGORY_HOME);
		setIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		startActivity(setIntent);
		//finish();

	}

	@Override
	public void onEpdLocked() {};
	@Override
	public void onEpdUnlocked() {};
	@Override
	public void onMirroringStarted()
	{
		Log.w("org.joygram.etoolbox", "onMirrorStarted");
		MainPreferenceManager.m_is_epd_mirroring = true;
	};
	@Override
	public void onMirroringStopped()
	{
		Log.w("org.joygram.etoolbox", "onMirrorStopped");
		MainPreferenceManager.m_is_epd_mirroring = false;
	};


	public void yotaMirror()
	{
		//com.yotadevices.sdk.Epd
		String device_name = "device_name:" + Build.MODEL;
		Log.i("org.joygram.etoolbox", device_name);

		//RotationAlgorithm.OPTION_EXPECT_FIRST_ROTATION_FOR_60SEC;
//		Display display = getWindowManager().getDefaultDisplay();
//		boolean is_epd = com.yotadevices.sdk.Epd.isEpdDisplay(display);

        if (false == MainPreferenceManager.m_is_epd_mirroring)
		{
			EpdManager.getInstance().stopMirroring();
			EpdManager.getInstance().startMirroring();
		}

		//com.yotadevices.sdk.EpdCallbacks;
		EpdUpdateParams params = new EpdUpdateParams();
		int black_stretch = params.getBlackStretch();

		Log.i("org.joygram.etoolbox", String.format("blackStretch:[{0}]", black_stretch));

	}

	@Override
	public void onStart()
	{
		//yota mirror
		yotaMirror();
		super.onStart();
		finish();
	}

	@Override
	public void onResume()
	{
		super.onResume();
	}
}
