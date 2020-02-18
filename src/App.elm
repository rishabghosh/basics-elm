module App exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (style)
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
        [ style "height" "100vh"
        , style "display" "flex"
        , style "align-items" "center"
        , style "justify-content" "center"
        ]
        [ div
            [ style "height" "50%"
            , style "width" "70%"
            , style "display" "flex"
            , style "justify-content" "space-evenly"
            , style "align-items" "center"
            ]
            [ button [ onClick Increment ] [ text "increment" ] -- two args are taken by button
            , button [ onClick Decrement ] [ text "decrement" ] -- two args are taken by button
            , text (String.fromInt model)
            ]
        ]


main =
    Browser.sandbox { init = init, view = view, update = update }
