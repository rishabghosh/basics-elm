module App exposing (..)

import Browser
import Html exposing (Html, div, text, button)
import Html.Events exposing (onClick)

init: Int
init = 0

type Action = Increment | Decrement

update : Action -> Int -> Int
update action count =
    case action of
        Increment -> count + 1
        Decrement -> count - 1 

view : Int -> Html Action
view model = 
    div[] -- no args are taken by div
    [
        (button [(onClick Increment)] [(text "increment")]), -- two args are taken by button
        (button [(onClick Decrement)] [(text "decrement")]), -- two args are taken by button
        div [] [text (String.fromInt model)]
    ]


main =
    Browser.sandbox { init = init, view = view, update = update}
    