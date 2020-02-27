module App exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (class, style)
import Html.Events exposing (onClick)


init : Int
init =
    0


type Action
    = Increment
    | Decrement


update : Action -> Int -> Int
update action count =
    case action of
        Increment ->
            count + 1

        Decrement ->
            if count == 0 then
                count

            else
                count - 1


view : Int -> Html Action
view model =
    div
        [ class "viewport" ]
        [ div
            [ class "container" ]
            [ button [ onClick Increment ] [ text "increment" ] -- two args are taken by button
            , button [ onClick Decrement ] [ text "decrement" ] -- two args are taken by button
            , text (String.fromInt model)
            ]
        ]


main =
    Browser.sandbox { init = init, view = view, update = update }
