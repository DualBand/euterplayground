module Eutermea where

import Euterpea

-- | Plays music on (Manjaro) Linux, where the default port is 2, apparently
manjaroPlay :: Music Pitch -> IO ()
manjaroPlay = playDev 2

-- | Plays music on Windows, where the default port is 0
winPlay :: Music Pitch -> IO ()
winPlay = play

fromList :: [Music Pitch] -> Music Pitch
fromList = foldl (:+:) (rest 0)

-- | Given the duration of a rest and tune, it returns a canon of that tune
canon :: Dur -> Music Pitch -> Music Pitch
canon offset tune = tune :=: (rest offset :+: tune)

inverseCanon :: Dur -> Music Pitch -> Music Pitch
inverseCanon offset tune = tune :=: (rest offset :+: invert tune)