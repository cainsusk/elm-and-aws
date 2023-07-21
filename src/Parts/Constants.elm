module Parts.Constants exposing (..)

import Element exposing (Attribute, spacing) 
import Element.Font as Font
import Types exposing (Msg)


font : Attribute msg
font =
    [ Font.external
        { name = "Cormorant"
        , url = "https://fonts.googleapis.com/css?family=Cormorant"
        }
    ]
        |> Font.family


space : Attribute Msg
space =
    spacing 30
