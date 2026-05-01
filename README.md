a small open source project capable of running both local and server sided explosions (its a bit bad due to copy and paste stuff but it works as is instead of the client script needing to call the module directly, though you can recode it if you want to)

by using this, you can run local explosions on both the client AND the server, being your choice.

Run it by the client via the remote event path (in LocalExplosion)

Run it by the server via the Explosion module directly. (yes, note it's a module.)


# Why do you need the client and remote event?
Tweens can get very laggy when played on the server, causing other instances in the game to also lag alongside with it. By using a localised version of this short code, you can instead make it a smooth animation, no lag. A disadvantage of this is the server script you're calling it from cannot (obviously) see them, so if you're making a script for a rocket launcher for example, that explosion is "visual". You'll need to simulate the hitboxes seperately. If you're looking forward to advance your developing skills to the next level, you're going to want to practice this a lot, especially for when you add so much stuff that your game starts becoming less and less optimised!
