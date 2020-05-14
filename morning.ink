CONST looping_song = "Here Comes the Sun by The Beatles"

// day specific state

VAR cat_inside = false
VAR window_unlocked = false
VAR fed_cat = false
VAR had_breakfast = false

-> new_day

== new_day ==

// reset all the day state variables
~cat_inside = false
~window_unlocked = false
~fed_cat = false
~had_breakfast = false

-> in_bed

== in_bed ==

I wake to the sound of {looping_song} on the radio.

Radio Announcer: "Its 8:25am and you are listening to IFM Melbourne. Traffic is at a standstill today..."

{ stopping:
- -> first_loop
- -> second_loop
- -> subsequent_loops
}

= first_loop

Shit

I can feel you judging me. For once can you just not. It isn't helping the situation.

+ Neither is lying here talking to your own brain
-

I'm going to pretent I didn't hear that
-> getting_dressed

= second_loop

Wait what?

Very funny brain. The old double-dreaming routine

+ No seriously that wasn't me
-

Well what are you suggesting? That we are in some kind of ground hog day time loop?

+ Yeah, actually thats pretty much what I was thinking. No need to sound so incredulous
-

I swear to god if you have gone and lost the plot there is going to be serious trouble

-> getting_dressed



= subsequent_loops

Here we go again...


-> getting_dressed



== getting_dressed

I get out of bed and stumble toward the wardrobe

{ stopping:
- -> first_loop
- -> second_loop
- -> subsequent_loops
}

= first_loop

Off-white or cream button up shirt?

+ Are you serious they are exactly the same shirt
-

Lets go with off-white shall we. Now, a serious solid blue tie or a fun one with stripes?

+ You are insane.
-

I quickly get dressed in a blue tie and walk to the only other real room in the apartment. The kitchen.

-> in_kitchen


= second_loop

Actually stuff getting dressed today we need coffee right away

+ I wholeheartedly agree
-
-> in_kitchen.interaction_with_pep

= subsequent_loops

{new_day == 3: Ok well since I am operating in some kind of crazy fantasy I might as well open up the rest of the wardrope}

What are we feeling to wear today brain?

+ Usual work attire
+ Just a tshirt and jeans
+ Full lycra cycling suit
+ Lets just stay in pyjamas today. Why not right?
-

An excellent choice

-> in_kitchen

== in_kitchen ==

Ok brain, what kind of hot beverage will it be this morning?

+ Coffee obviously[]. You think I can operate like this? 
+ [Lets go caffine free today] Lets go caff ... Coffee obviously. You think I can operate like this? 
-

-> interaction_with_pep

= interaction_with_pep

$ A scratching meowing sound at the window $

It's Pep{.| again. This has all the tropes of a time loop narraative.|. It's almost like every day is a time loop for a cat.| right on time!} Should I let him in?

+ Yeah 
    ~window_unlocked=true
    ~cat_inside=true
    Should I lock the window to keep him in?
    ++ Yeah
        ~window_unlocked=false
    ++ Nah
    --
    
    $ Pep walks to his bowl and meowls expectantly $
    
    Oh shit, I should feed him but I don't have time to do that and feed myself. What will it be?
    
    ++ Feed Pep 
        I pour some cat biscuits into the bowl for him. He looks unimpressed but crunches a few biscuits anyway. He's good to me I should look after him better.
        ~fed_cat=true
    ++ Feed ourselves
        I ignore Peps glare and fix myself some breakfast.
        -> eat_breakfast ->
    --
    
+ Nah
    Ok well this gives us time to have some breakfast at least. 
    -> eat_breakfast ->
-

Ok time to get out of here if I want to make the train. Any last things I should grab for today?

+ Sunglasses?
+ A{eat_breakfast:nother} doughnut for the road?
-

Sure if you say so.

I walk out of the house and on to the street. From a passing car I can hear the sound of {looping_song}. {What a strange coincidence... | Oh shit not again!}

-> new_day

== eat_breakfast ==
I don't care for your judgement Brain, I'm having a doughnut for breakfast and that is final. {new_day > 1: And whats more I'm going to do it in every loop just to spite you.}
~had_breakfast=true
->->




