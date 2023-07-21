module View exposing (view)

import Element exposing (..)
import Html exposing (Html)
import Parts.Banners exposing (statusView, titleView)
import Parts.Constants exposing (font)
import Parts.Tools exposing (toHtml)
import Types exposing (Model, Msg)


view : Model -> { title : String, body : List (Html Msg) }
view model =
    let
        homeView : Element Msg
        homeView =
            column [ width fill ]
                [ statusView model.status model.name
                , titleView model.title
                ]

        bodyView : Element Msg
        bodyView =
            column [ height fill, width fill, padding 20, font ]
                [ homeView
                ]
    in
    { title = model.title
    , body = [ toHtml bodyView ]
    }
