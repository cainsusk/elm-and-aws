module State exposing (update)

import Types exposing (Model, Msg(..))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Notif txt ->
            ( { model | status = txt }, Cmd.none )
        Login txt ->
            ( { model | name = txt}, Cmd.none)
