module Parts.Banners exposing (..)

import Element
    exposing
        ( Element
        , alignRight
        , alignTop
        , centerX
        , el
        , fill
        , row
        , text
        , width
        )
import Element.Font as Font
import Parts.Constants exposing (space)
import Types exposing (Msg)


titleView : String -> Element Msg
titleView title =
    row [ width fill, alignTop, space ]
        [ text title
            |> el [ centerX, Font.bold ]
        ]


statusView : String -> String -> Element Msg
statusView status name =
    row [ width fill, space ]
        [ text name
            |> el [ Font.italic ]
        , text status
            |> el [ alignRight, Font.italic ]
        ]
