package org.joygram.etoolbox;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;


public class MainActivity extends AppCompatActivity
{

	@Override
	protected void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);

		MainPreferenceManager.m_prefs = getSharedPreferences("org.joygram.etoolbox_preferences", MODE_PRIVATE);
		MainPreferenceManager.getPreferencesData();

		Log.i("main", "--- start ---");
		Intent service = new Intent(this, MainService.class);
		startService(service);
		finish();
	}

	@Override
	public void onStart()
	{
		super.onStart();
	}

}
