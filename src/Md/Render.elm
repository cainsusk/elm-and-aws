module Md.Render exposing (renderer)

import Element exposing (Element)
import Markdown.Html
import Pieces exposing (barView, bioView)


renderer : Markdown.Html.Renderer (List (Element msg) -> Element msg)
renderer =
    Markdown.Html.oneOf
        [ Markdown.Html.tag "bio"
            (\name photoUrl twitter github dribbble renderedChildren ->
                bioView
                    renderedChildren
                    name
                    photoUrl
                    twitter
                    github
                    dribbble
            )
            |> Markdown.Html.withAttribute "name"
            |> Markdown.Html.withAttribute "photo"
            |> Markdown.Html.withOptionalAttribute "twitter"
            |> Markdown.Html.withOptionalAttribute "github"
            |> Markdown.Html.withOptionalAttribute "dribbble"
        -- , Markdown.Html.tag "tbar"
        --     (\name title status renderedChildren ->
        --         barView
        --             renderedChildren
        --             name
        --             title
        --             status
        --     )
        --     |> Markdown.Html.withAttribute "name"
        --     |> Markdown.Html.withAttribute "title"
        --     |> Markdown.Html.withAttribute "status"
        ]
