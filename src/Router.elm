module Router exposing (routeView)

import Html exposing (Html, text)
import Url
import Url.Parser exposing (Parser, map, oneOf, parse, s)



--公開部分


routeView : Url.Url -> Html msg
routeView =
    toRoute >> routing



--非公開部分


type Route
    = Home
    | Profile
    | NotFound


routing : Route -> Html msg
routing route =
    case route of
        Home ->
            text "ホーム"

        Profile ->
            text "プロフィール"

        NotFound ->
            text "ページが見つかりませんでした"


toRoute : Url.Url -> Route
toRoute url =
    Maybe.withDefault NotFound (parse routeParser url)


routeParser : Parser (Route -> a) a
routeParser =
    oneOf
        [ map Home (s "home")
        , map Profile (s "profile")
        ]
