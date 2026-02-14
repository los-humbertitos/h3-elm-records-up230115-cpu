module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 val1 val2 val3 =
    val1 + val2 + val3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


type alias Language =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


langs : List Language
langs =
    [ { name = "Java", releaseYear = 1995, currentVersion = "23.0" }
    , { name = "Elm", releaseYear = 2012, currentVersion = "0.19.1" }
    ]


languageNames : List Language -> List String
languageNames inData =
    List.map .name inData


type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    ]


onlyStudents : List User -> List String
onlyStudents list =
    List.map
        (\u ->
            if u.uType == "Student" then
                u.name

            else
                ""
        )
        list


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "Control", releaseYear = 2019, available = True, downloads = 3000000, genres = [ "Action", "Shooter" ] }
    , { title = "Ocarina of Time", releaseYear = 1998, available = True, downloads = 7600000, genres = [ "Action", "Adventure" ] }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "32GB"
    , model = "Zero"
    , brand = "Thunderobot"
    , screenSize = "16"
    }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
