module Types exposing (..)


type alias Model =
    { title : String
    , status : String
    , name: String
    }


type alias Flags =
    ()


type Msg
    = Notif String
    | Login String
