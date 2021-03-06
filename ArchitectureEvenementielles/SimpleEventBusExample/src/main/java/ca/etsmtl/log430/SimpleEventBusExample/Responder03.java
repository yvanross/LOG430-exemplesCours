package ca.etsmtl.log430.SimpleEventBusExample;

import com.google.common.eventbus.Subscribe;

import java.util.concurrent.TimeUnit;

// Someone interested in "Hello" events
public class Responder03 {
    @Subscribe
    public void someoneSaidHello(HelloEvent event) throws InterruptedException { 
        System.out.println("Source of event said \"" + event.getMessage() + "\"");
        System.out.println("Responder03 says Hello there and goes to sleep...");
        TimeUnit.SECONDS.sleep(3);
     
    }
}
