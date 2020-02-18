module App exposing (..)

import Browser
import Html exposing (Html, div)
import Html.Events exposing (onClick)

init: number
init = 0

type Action = Increment | Decrement


update : Action -> number -> number
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1 


view : number -> Html Action
view model = 
    div[]
    [Html.text ("App works, able to print something")]


main =
    Browser.sandbox { init = init, view = view, update = update}
    