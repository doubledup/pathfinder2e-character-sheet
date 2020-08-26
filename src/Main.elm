module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = 0, update = update, view = view }


type Ancestry
    = Dwarf
    | Elf
    | Goblin
    | Gnome
    | Halfling
    | Human


type Background
    = Acolyte
    | Acrobat
    | Animal
    | Artisan
    | Artist
    | Barkeep
    | Barrister
    | Bounty
    | Charlatan
    | Criminal
    | Detective
    | Emissary
    | Entertainer
    | Farmhand
    | Field
    | Fortune
    | Gambler
    | Gladiator
    | Guard
    | Herbalist
    | Hermit
    | Hunter
    | Laborer
    | Martial
    | Merchant
    | Miner
    | Noble
    | Nomad
    | Prisoner
    | Sailor
    | Scholar
    | Scout
    | Street
    | Tinker
    | Warrior


type Class
    = Alchemist
    | Barbarian
    | Bard
    | Champion
    | Cleric
    | Druid
    | Fighter
    | Monk
    | Ranger
    | Rogue
    | Sorcerer
    | Wizard


type alias Model =
    { characterName : String
    , playerName : String
    , level : Int
    , experience : Int
    , ancestry : Ancestry
    , background : Background
    , class : Class
    }


type Msg
    = Increment
    | Decrement


update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view model =
    div []
        [ h1 [] [ text "Character sheet" ]
        , h2 [] [ text "Details" ]
        , div []
            [ span []
                [ label [] [ text "Name" ]
                , input [ type_ "text" ] []
                ]
            ]
        , div []
            [ span []
                [ label [] [ text "Player" ]
                , input [ type_ "text" ] []
                ]
            ]
        , div []
            [ span []
                [ label [] [ text "Level" ]
                , input [ type_ "text" ] []
                ]
            ]
        , div []
            [ span []
                [ label [] [ text "Experience" ]
                , input [ type_ "text" ] []
                ]
            ]
        , h2 [] [ text "Ancestry" ]
        , p []
            [ select []
                [ option [] [ text "Select Ancestry" ]
                , option [] [ text "Dwarf" ]
                , option [] [ text "Elf" ]
                , option [] [ text "Goblin" ]
                , option [] [ text "Gnome" ]
                , option [] [ text "Halfling" ]
                , option [] [ text "Human" ]
                ]
            ]
        , h2 [] [ text "Background" ]
        , p []
            [ select []
                [ option [] [ text "Select Background" ]
                , option [] [ text "Acolyte" ]
                , option [] [ text "Acrobat" ]
                , option [] [ text "Animal" ]
                , option [] [ text "Artisan" ]
                , option [] [ text "Artist" ]
                , option [] [ text "Barkeep" ]
                , option [] [ text "Barrister" ]
                , option [] [ text "Bounty" ]
                , option [] [ text "Charlatan" ]
                , option [] [ text "Criminal" ]
                , option [] [ text "Detective" ]
                , option [] [ text "Emissary" ]
                , option [] [ text "Entertainer" ]
                , option [] [ text "Farmhand" ]
                , option [] [ text "Field" ]
                , option [] [ text "Fortune" ]
                , option [] [ text "Gambler" ]
                , option [] [ text "Gladiator" ]
                , option [] [ text "Guard" ]
                , option [] [ text "Herbalist" ]
                , option [] [ text "Hermit" ]
                , option [] [ text "Hunter" ]
                , option [] [ text "Laborer" ]
                , option [] [ text "Martial" ]
                , option [] [ text "Merchant" ]
                , option [] [ text "Miner" ]
                , option [] [ text "Noble" ]
                , option [] [ text "Nomad" ]
                , option [] [ text "Prisoner" ]
                , option [] [ text "Sailor" ]
                , option [] [ text "Scholar" ]
                , option [] [ text "Scout" ]
                , option [] [ text "Street" ]
                , option [] [ text "Tinker" ]
                , option [] [ text "Warrior" ]
                ]
            ]
        , h2 [] [ text "Class" ]
        , p []
            [ select []
                [ option [] [ text "Select Class" ]
                , option [] [ text "Alchemist" ]
                , option [] [ text "Barbarian" ]
                , option [] [ text "Bard" ]
                , option [] [ text "Champion" ]
                , option [] [ text "Cleric" ]
                , option [] [ text "Druid" ]
                , option [] [ text "Fighter" ]
                , option [] [ text "Monk" ]
                , option [] [ text "Ranger" ]
                , option [] [ text "Rogue" ]
                , option [] [ text "Sorcerer" ]
                , option [] [ text "Wizard" ]
                ]
            ]
        , h2 [] [ text "Ability scores" ]
        , p []
            [ span [] [ text "Ability" ]
            , span [] [ text "Score" ]
            , span [] [ text "Modifier" ]
            , span [] [ text "Free" ]
            , span [] [ text "Ancestry" ]
            , span [] [ text "Background" ]
            , span [] [ text "Class" ]
            ]
        , p []
            [ label [] [ text "Strength" ]
            , input [ type_ "checkbox" ] []
            ]
        , p []
            [ label [] [ text "Dexterity" ]
            , input [ type_ "checkbox" ] []
            ]
        , p []
            [ label [] [ text "Constitution" ]
            , input [ type_ "checkbox" ] []
            ]
        , p []
            [ label [] [ text "Intelligence" ]
            , input [ type_ "checkbox" ] []
            ]
        , p []
            [ label [] [ text "Wisdom" ]
            , input [ type_ "checkbox" ] []
            ]
        , p []
            [ label [] [ text "Charisma" ]
            , input [ type_ "checkbox" ] []
            ]
        , span [] []
        , h2 [] [ text "Skills" ]
        , h2 [] [ text "Feats & Abilities" ]
        , h2 [] [ text "Spells" ]
        , h2 [] [ text "Equipment" ]
        ]
