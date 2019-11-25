module Main exposing (Msg(..), init, main, subscriptions, update, view)

import Browser
import Html exposing (Html, div, pre, text)
import Http



-- MAIN


main =
    Browser.document
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }



-- MODEL


type alias Model =
    { counter : Int }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { counter = 0 }
    , Cmd.none
    )



-- UPDATE


type Msg
    = None


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = "counter", body = [ div [] [ text (String.fromInt model.counter) ] ] }
