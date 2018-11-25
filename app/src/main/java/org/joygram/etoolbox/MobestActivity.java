package org.joygram.etoolbox;

import android.content.ComponentName;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Display;

public class MobestActivity extends AppCompatActivity
{

	public void mobestLauncher()
	{
		Display display = getWindowManager().getDefaultDisplay();

		//com.yotadevices.sdk.EpdManager.getInstance().startMirroring();
		//  com.yotadevices.sdk.EpdManager.getInstance().stopMirroring();
		//calling an activity using <intent-filter> action name

		Intent intent=new Intent();
		intent.setComponent(new ComponentName("com.android.jv.ink.launcherink", "com.android.jv.ink.launcherink.ui.home.JvMainActivity"));
		startActivity(intent);
	}

	@Override
	protected void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_mobest);

		finish();
	}
}
