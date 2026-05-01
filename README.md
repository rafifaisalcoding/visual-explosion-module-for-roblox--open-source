a small open source project capable of running both local and server sided explosions (its a bit bad due to copy and paste stuff but it works as is instead of the client script needing to call the module directly, though you can recode it if you want to)

by using this, you can run local explosions on both the client AND the server, being your choice.

Run it by the client via the remote event path (in LocalExplosion)

Run it by the server via the Explosion module directly. (yes, note it's a module.)


# Why do you need the client and remote event?
Tweens can get very laggy when played on the server, causing other instances in the game to also lag alongside with it. By using a localised version of this short code, you can instead make it a smooth animation, no lag. A disadvantage of this is the server script you're calling it from cannot (obviously) see them, so if you're making a script for a rocket launcher for example, that explosion is "visual". You'll need to simulate the hitboxes seperately. If you're looking forward to advance your developing skills to the next level, you're going to want to practice this a lot, especially for when you add so much stuff that your game starts becoming less and less optimised! Just remember to use FireAllClients if you want to show that explosion to ALL players. For example:
`	ExplosionRemote:FireAllClients(position, Color3.new(1, 0.5, 0), Vector3.new(currentBlastRadius, currentBlastRadius, currentBlastRadius), 0.5)`

# That's amazing! I'm going to use the client everytime!
Before you do, you should note that server sided tweens (Firstly, just note that they are SUPER laggy.) are able to also count "hitbox" stuff. It's best for quick, small explosions with little to no detail. These can also be used as to count as a "part" that both the server and client can see, which means that you can use something such as spatial query to detect if one is in an explosion or not much easier. *(but yes, using the client is more data efficient. i've never really used the module for server script directly myself too much.)*
