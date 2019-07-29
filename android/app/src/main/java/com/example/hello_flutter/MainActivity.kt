package com.example.hello_flutter

import android.os.Bundle
import android.widget.Toast
import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import java.text.SimpleDateFormat

class MainActivity : FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)
        MethodChannel(flutterView, CHANNEL).setMethodCallHandler { methodCall, result ->
            if (methodCall.method.equals("showToast")) {
                Toast.makeText(this, "Flutter call kotlin code", Toast.LENGTH_SHORT).show()
            } else if (methodCall.method.equals("getAndroidTime")) {
                result.success(getCurrentTime())
            }
        }
    }

    private fun getCurrentTime(): String {
        return SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(System.currentTimeMillis())
    }

    companion object {
        private val CHANNEL = "com.flyou.test/android"
    }
}
