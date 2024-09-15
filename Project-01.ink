VAR Health = 2
VAR player_name= ""
VAR keys = 0
VAR time = 0 //  0 Morning, 1 Noon, 2 Night

-> memory

== memory ==
Before we start, I must ask you to pick a name for your person before you head in.

*[Dipper]
~player_name = "Dipper"
-> INTRODUCTION

*[Mable]
~player_name = "Mable"
-> INTRODUCTION

== INTRODUCTION ==
 “Thank you. Now out of formality I’ll tell you who I am. I’m the narrator, my name isn’t important, but what is important is that in a vast multiverse anything is possible. This is a testament to your curiosity and a game I put together myself based off scenarios I have witnessed. You will be transported into a scenario where you must make your way through, beware there might be danger, but the risk is all the reward. Now to get started, let's make a deal, shall we? Once you complete my game, I’ll put you right back into your universe or any other you may want to go to. Do you accept?” A inky hand comes out of the darkness.
*“We have a deal.” You shake his hand ->A_DEAL_HAS_BEEN_MADE
*“No, Thank you. I’d like to wake up now.” ->NO_ENDING

== NO_ENDING ==
“Well kid, you had your chance... Now you get to live out your boing life. I’ll be gracious and give you a little glimpse of what's to come. You’ll go live a plain life with nothing ever exciting ever happening, you have like two friends who never hang out with you, and partner who fell out of love and will file for divorce then move on to live a happier life without you. You never have any pets or children, no legacy, no love and no hope. Good luckkkk” He pops out of existence leaving you in darkness before waking up ->END

== A_DEAL_HAS_BEEN_MADE ==
“You made the right decision! You already have the hang of this. There’s a lot ahead of us, shall we begin?”  

You are teleported into a forest. It’s dark, you can’t see very far ahead of you only the stars in the night sky and a faint glowing in the distance. You take a step forward and your foot hits something, you bend down to feel what it is. It's a backpack, it might be useful, it might not. Do you take it? 
*Grab the Backpack ->GRAB_THE_BACKPACK
*Leave the Backpack ->LEAVE_THE_BACKPACK

== LEAVE_THE_BACKPACK ==
You decided that you don't need the backpack, it’ll just weigh you down. You want to go figure out what that light is, you rapidly begin to approach it. As it got closer it grew smaller, almost as if it were hiding. You move past bushing and branches arriving at a clearing, in the middle of the cleaning is a small lit campfire. Confusion falls over you as you approach closer, surely this wasn’t all you saw, it looked as if it were moving. You turn away from it to look around for anything that was what you may have seen. As you scout the edges of the clearing something begins moving behind you. The hair on your neck stands up as you slowly see what's behind you. What was once a small campfire seeming to have grown into a large flame, the wood underneath had turned into legs, it was almost spider-like. It began skittering at full speed mouth of fire agape, within one quick motion it went dark...
“That’s rough kid.. I thought you were smarter than that. Guess I picked the wrong person for the job. But you have another chance to prove me wrong. Try not to make a fool of yourself twice. 
{Health -1}
*Take Two -> A_DEAL_HAS_BEEN_MADE

== GRAB_THE_BACKPACK ==
You open the backpack and feel around, you grab a flashlight and turn it on. As you shine the light into the bag you see the rest of its contents a bag, it contains a bag of jumbo marshmallows, some wood, and a few cans of beans. You zip up the bag, put it on and trek towards the distant glowing. Pushing past bushing and branches you reach a clearing, you cautiously enter. You spot the small campfire in the middle; you wonder if this is where the backpack came from. You set down the backpack and unzip it, as you do so you hear something and look over. You see the small campfire cautiously come up to you. The little thing propped itself on your knee, it was surprisingly cold for what seemed to be a fire creature. You were taken back at first just didn't do anything to scare it, the little one seemed to be interested in what was in the bag. You remembered the food and pulled out the marshmallows. The little scampfire hopped down from your knee and sat on the ground looking up at you as if wanting a treat, similar to a dog asking for a treat. 
*Give it some marshmallows ->GIVE_IT_SOME_MARSHMALLOWS
*Refuse to give it some food ->REFUSE_TO_GIVE_IT_SOME_FOOD

== REFUSE_TO_GIVE_IT_SOME_FOOD ==
You know what national parks always say, you shouldn't give food to wild animals, you never know what might happen. That was true indeed, you never will know what will happen. You zip up the bag not wanting to risk giving it food but bad move kid. Right before your eyes you see this little creature grow massive in size as its flame roared, it was going to get something to eat one way or another. Not even a second later the lights go out and it goes dark. 
Thanks for nothing {player_name}. I really thought there was something different about you, guess I really was wrong. Thanks for disappointing me. Thats what I get for thinking a human could from a non-weird world could handle something like this. You’d think you humans would have a better survival instinct; I mean really, it's just a Scampfire. Fire that's alive, just feed its fire with food for fuel or douse it with water to kill it. It's barely dangerous. Just like that you woke up, as if it was all a dream. 
{Health -1}
->END

== GIVE_IT_SOME_MARSHMALLOWS ==
You find the little guy oddly adorable and throw some marshmallows at it. It wiggles its flames, catches each piece and eats them happily. You toss a few more before putting them back in the pulling out a can of beans, maybe if it's still hungry it will like the beans. The scampfire eats it all rather fast as you put the backpack back on. It finishes and sees you walking away then hops up scurrying to you. It makes what you assume to be happy fire crackle as it sways and follows you. The scene starts you fade. 

 

“Well, well, well looks like you made a friend! Seems like I wasn't wrong about you {player_name}. Congratulations on making it through without a hitch (or did you) I knew you had it in you. This was such a success I know the perfect scenario to put you in next within my game. Til then, Byeeeee.” Then they were gone, and you woke up. ->Interlude

== Interlude ==
After you woke up your mind couldn't move past that dream you had. It was so vived, it felt so real. Yet.. Here you were, alone in your bed, feeling as if you had an eddible the night before
{It's Morning|Noon Has Passed|Evening Approches|The clock strikes midnight}
+[The morning is ticking by]->Later
== Later ==
You had a rough day at class, your college professor had to snap you out of a daze a few times. You couldn't focus on anything, still thinking about your dream. 
+[Noon Has Passed Evening Approches] ->Even_Later

== Even_Later==
You felt drained. The whole day your mind could think of nothing more of that damn dream and the stuipd narrator, and why did it feel so familier. It felt like deja vu but where you know you've never expieranced it before. Maybe You should sleep and see if you could talk to him again..
->Dream

== function advance_time == 

  

    ~ time = time + 1 

    { 
        - time > 2: 

            ~ time = 0 
    }     

    {     
        - time == 0: 

            ~ return "Morning" 


        - time == 1: 

            ~ return "Noon"
         

        - time == 2: 

            ~ return "Night" 

    }

    ~ return time 
    
 == Dream ==
    “Well, well, well, well, well, well. What do we have here?” You hear the echoes of the narrator around you. “You came back to see me, here for another round? Or did you just want to see me?” You hear him bellow a chuckle that vertebrates the darkness around you. “It's been a bit boring here a must admit, waiting for you to complete a day's work just for you to not sleep until midnight. What couldve been more important than sleep to a human, its where most of you get your ideas and inspiration and get to hide away from your boring life.”  
    *“I know you, don’t I? I don’t know how and I don't know why but I know you somehow don't I?” -> Anger 
    *“Are you real? How can you talk to me in my dreams? Can I know more about you?” -> On_Edge 
    *“This is a nice escape from my normal life... I’d like to go on more mini adventures with you if possible.” -> Pleased 
== Anger ==
A single eye opens in the darkness looking directly at you and speaks with anger in his voice. “Don’t ask questions you aren’t ready to hear kid. I want this to be peaceful but if you start sticking your nose where it doesn't belong, I’ll have to deal with you myself. I don’t think you’d want that. So how about it kid you want to drop this or keep pushing my buttons?” 
*You keep pushing aggressively. “What aren’t you telling me. Why are you avoiding the question.. ‘narrator’.” You stare back the eye with great intensity. You need to figure out what is happening here. “Tell me who you are and why I think I know you. What are you hiding.”  ->Anger_continuous
*You keep pushing passively. “Woah, I didn’t know that would hit a nerve. Sorry about that, I just want to know where this sense of Deja Vu is coming from. I figured you would know. But now it seems like you do know but don't want to say.” ->Anger_continuous

== On_Edge ==
You can hear a bit of hesitation in his voice and then a sigh “Listen Kid, I’ll be upfront with you.” He appears out of the darkness as a glowing triangle, with a bit of a pyramid look to him. An eye opened in the middle of the triangle, he grew thin black arms and legs. A black bow tie and top hat popped into existence, and he took a small bow. “I’m what one would call an interdimensional dream being, I've existed for trillions of years. I hold vast knowledge of the universe among other things. I can only exist within someone's mind unless they give me permission to exist within their body with them. I go from person to person giving them knowledge in turn only for them to show me what this generation has to offer. You kid are this generation’s pick, you’re smart, and thought I’d give you the advantage over your peers to expand your knowledge beyond what humans are capable of at this point in time. What do you say?” he extends his hand with a glowing blue flame “Would you like continue this game of ours, let me use your body to explore the wonders of this age and I give you all the information you could ask for?”
*“I don’t think I can trust you... every part of my body is screaming not to believe you.”  bill begins to fade away -> Anger 
*“I’ll work with you, but a deal won't be made right now. You must prove yourself.” --> Pleased 
== Pleased ==
    His pleased laugh bounced around the darkness. “You are my favorite kind of human kid. I wish more thought the way you do. Well then! Let's get to it!”  

With a snap that echoed you were quickly transported into another forest like last night. This time it felt more calming, you were less on edge. You wandered around aimlessly not really sure what you were looking for. Despite that it didn't take long for you to find a large beastly shadow.  -> Cruel_fate 

== Cruel_fate == 
You get trapped in your head by Bill. Amongst one of your many adventures you end up giving away your physical form without realizing it. You are now forever trapped within a dream within a dream, all sense of time has been lost to you, you feel as if this one dream is forever in motion. The dream demon is now able to do whatever he wants now that he has your body as his puppet... ->DONE

== Anger_continuous ==
    The eye begins to seep black ink into the void, it starts to build itself piece by piece, until a giant glowing pyramid was towering over you. The thing’s eye then shifts down to and the thing splits into three pieces with teeth sprouting from the top and bottom of both with a long-forked tongue rolling out. The yellow glow shifts to red, its inky limbs reach for you. You get grabbed and moved to the middle of its face as its eye stares at you. “You are going to cause me more trouble than it's worth. Yes, you know me, but not in this universe. This is one of the few universes you haven't met me in yet, but it seems my plan has backfired. Even when you haven’t met me yet here you still seem to share a stupid link to your other self's. You want to know what happened to the other {player_name}? They all died. None of you thought it would be wise to listen to me so you all met a terrible fate, and now that you know so must you.”  
    After his rant he threw you into a glowing red portal. As you hit the ground the portal closed above you. You look around for a way to escape, all you see is the room lit up red with two doors and a set of keys.  
    *Try to go right -> Right_door
    *Try to go left ->Left_door
    *Grab the keys ->key_pickup

=== key_pickup ===
~ keys = keys + 1
    You can how unlock doors.
    * [Go Back] ->Anger_continuous
== Right_door ==
You twist the handle and it doesnt open.
{keys > 0} [Unlock the door] ->Right_do0r_unlocked
*[Go back]->Anger_continuous
== Left_door ==  
You twist the handle and it doesnt open.
{keys > 0} [Unlocks door]->Left_door_unlocked
*[Go back]->Anger_continuous

== Right_do0r_unlocked ==
You fall right through and end up in the bottemless pit. Anything that goes in can never escape.

{&You fall into darkness| Light is gone|No god can save you|You can't escape your own mind|Fighting is useless| hope is gone} 
+ [Wait] -> Right_do0r_unlocked
->DONE

== Left_door_unlocked ==
You walk into a room full of the people you love and care about. All of them see you and start to make mean and cruel comments. They laugh at you. They mock you. They tell  you all the things they wish to say but don't out of politness. They hold nothing back, digging into your insecurity, they pull at the sting that keeps you sane. Your own anxiety starts to eat you alive, all the terrible thoughs people told you to brush off coming true. Your body starts to burn up, your head starts to pound. You grow dizzy. Your vision starts to fade. You feel nothing. ->DONE
