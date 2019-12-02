module Page exposing (Page)

import Html exposing (Html)


type alias Page model msg =
    { model : model, view : model -> Html msg, update : msg -> model -> ( model, Cmd msg ) }
