package org.joygram.etoolbox;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;


public class MainSettingsActivity extends PreferenceActivity {

    private Preference.OnPreferenceChangeListener onPreferenceChangeListener = new Preference.OnPreferenceChangeListener() {

        @Override
        public boolean onPreferenceChange(Preference preference, Object newValue) {
            String stringValue = newValue.toString();

            if (preference instanceof EditTextPreference) {
                preference.setSummary(stringValue);

            } else if (preference instanceof ListPreference) {

                ListPreference listPreference = (ListPreference) preference;
                int index = listPreference.findIndexOfValue(stringValue);

                preference.setSummary(index >= 0 ? listPreference.getEntries()[index]
                        : null);
            }
            return true;
        }
    };


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        addPreferencesFromResource(R.xml.pref_general);

        setOnPreferenceChangeBool(findPreference("switch_touch"));
        setOnPreferenceChangeString(findPreference("text_refresh_touch_count"));

        setOnPreferenceChangeBool(findPreference("switch_timer"));
        setOnPreferenceChangeString(findPreference("text_timeout"));

        setOnPreferenceChangeBool(findPreference("switch_show_refresh_button"));
        setOnPreferenceChangeBool(findPreference("switch_auto_start"));
    }


    void setOnPreferenceChangeString(Preference preference) {

        SharedPreferences shared_prefs = PreferenceManager.getDefaultSharedPreferences(preference.getContext());

        preference.setOnPreferenceChangeListener(onPreferenceChangeListener);
        onPreferenceChangeListener.onPreferenceChange(
                preference,
                shared_prefs.getString(preference.getKey(),
                        "")
        );

    }

    void setOnPreferenceChangeBool(Preference preference) {
        SharedPreferences shared_prefs = PreferenceManager.getDefaultSharedPreferences(preference.getContext());

        preference.setOnPreferenceChangeListener(onPreferenceChangeListener);
        onPreferenceChangeListener.onPreferenceChange(
                preference,
                shared_prefs.getBoolean(preference.getKey(),
                        false)
        );

    }

}

