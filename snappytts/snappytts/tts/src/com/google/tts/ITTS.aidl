// Copyright 2008 Google Inc. All Rights Reserved.

/**
 * AIDL for the TTS Service
 * ITTS.java is autogenerated from this
 * 
 * @author clchen@google.com (Charles L. Chen)
 */
 
package com.google.tts;
import com.google.tts.ITTSCallback;

// Declare the interface.
interface ITTS {
  void setEngine(in String selectedEngine);
  void setSpeechRate(in int speechRate);  
  void speak(in String text, in int queueMode, in String[] params);
  boolean isSpeaking();
  void stop();
  void addSpeech(in String text, in String packageName, in int resId);
  void addSpeechFile(in String text, in String filename);
  int getVersion();  
  void setLanguage(in String language);
  boolean synthesizeToFile(in String text, in String[] params, in String outputDirectory);
  void playEarcon(in String earcon, in int queueMode, in String[] params);
  void addEarcon(in String earcon, in String packageName, in int resId);
  void addEarconFile(in String earcon, in String filename);
  void registerCallback(ITTSCallback cb);
  void unregisterCallback(ITTSCallback cb);
}