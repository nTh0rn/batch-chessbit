I made this in 2021 with the intent of making it a full chess engine.
Rather quickly, I realized that Batch was not at all powerful enough
to run the computations needed to calculate future moves. This is as
far as I got before I moved making this project into another language.

In it's current version, it only sees whether or not the king is
checked only if the piece checking the king is on a lower row, or if
its on the same row, it'll only detect the check if its to the right
of the king. I don't plan on returning to this project and fixing this.
# How to use
To move, type the coordinates of the piece you want to move and where
you want it to move to. For example:
`e2e4`

Upon opening, whoever's move it is is determined by who actually moves first.
This was done to avoid additional fen-parsing.
Still a pretty fun demo though!

# Evaluation
The evaluation only works by using piece-tables, obtained from [here](https://www.chessprogramming.org/Simplified_Evaluation_Function)(The Chess Programming Wiki is a goldmine, I highly recommend it.). Again, I was going to implement an actual chess-engine, and then I wised up.