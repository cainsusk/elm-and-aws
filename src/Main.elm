module Main exposing (main)

import Browser
import State exposing (update)
import Types exposing (..)
import View exposing (view)


init : Model
init =
    { title = "elm-and-aws"
    , status = "welcome!"
    , name = "guest"
    }


main : Platform.Program Flags Model Msg
main =
    Browser.document
        { init = \_ -> ( init, Cmd.none )
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
