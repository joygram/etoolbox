package org.joygram.etoolbox;

import android.content.SharedPreferences;
import android.util.Log;
import android.widget.TextView;

public class MainPreferenceManager
{
	static SharedPreferences m_prefs;

	static public boolean m_use_timer = false;
	static public int m_timeout = 30;

	static public boolean m_use_touch = false;
	static public int m_touch_count = 10;

	static public boolean m_show_refresh_button = true;
	static public boolean m_auto_start = true;

	static public boolean m_is_epd_mirroring = false;

	static void getPreferencesData()
	{
		if (null == m_prefs)
		{
			return;
		}

		m_use_touch = m_prefs.getBoolean("switch_touch", false);
		m_touch_count = Integer.parseInt(m_prefs.getString("text_refresh_touch_count", "10"));

		m_use_timer = m_prefs.getBoolean("switch_timer", false);
		m_timeout = Integer.parseInt(m_prefs.getString("text_timeout", "30"));

		m_show_refresh_button = m_prefs.getBoolean("switch_show_refresh_button", true);
		m_auto_start = m_prefs.getBoolean("switch_auto_start", true);

		Log.i("org.joygram", String.format("touch_count:%d, timeout:%d", m_touch_count, m_timeout));

	}
}

