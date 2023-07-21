module Parts.Tools exposing (..)

import Element exposing (Element, layout, width, fill)
import Html exposing (Html)
import Types exposing (Msg)

toHtml : Element Msg -> Html Msg
toHtml =
    layout [ width fill ]
