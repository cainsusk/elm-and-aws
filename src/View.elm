module View exposing (view)

import Constants
import Element exposing (..)
import Html exposing (Html)
import Md.Parser exposing (parseView)
import Pages.Welcome
import Pieces exposing (barView)
import Types exposing (Model, Msg)


view : Model -> { title : String, body : List (Html Msg) }
view model =
    { title = model.title
    , body =
        -- let
        -- validate :
        [ layout [ width fill ]
            (Element.column [ width fill, Constants.font, Constants.space, padding 50 ]
                (barView model.name model.title model.status <|
                    parseView Pages.Welcome.view [ spacing 10 ] <|
                        []
                )
            )
        ]
    }
