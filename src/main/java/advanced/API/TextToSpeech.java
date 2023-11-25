package advanced.API;

import com.sun.speech.freetts.*;

public class TextToSpeech {

    private Voice voice;

    public TextToSpeech() {
        System.setProperty("freetts.voices", "com.sun.speech.freetts.en.us.cmu_us_kal.KevinVoiceDirectory");

        VoiceManager voiceManager = VoiceManager.getInstance();
        voice = voiceManager.getVoice("kevin16");
        voice.allocate();
    }

    public void speak(String words) {
        voice.speak(words);
    }

    public void shutdown() {
        voice.deallocate();
    }


    /*
    public static void main(String[] args) {
        TextToSpeech tts = new TextToSpeech();
        tts.speak("Chelsea number 1");
        tts.shutdown();
    }
    */
}