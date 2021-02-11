module App.App.Repository.Encode exposing (..)

{-| Generated by elm-json-interop.
-}

import App.App.Repository.Repository as A
import Utils.Json.Encode_ as E_
import Json.Encode as E


response : A.Response -> E.Value
response a = (E.object [ ( "data", (E.object [ ( "viewer", (E.object [ ( "repositories", (E.object [ ( "nodes", (E.list(\a_data_viewer_repositories_nodes_ -> (repository (a_data_viewer_repositories_nodes_)) ) (a.data.viewer.repositories.nodes)) ) ]) ) ]) ) ]) ) ])

repository : A.Repository -> E.Value
repository a = (E.object [ ( "name", (E.string (a.name)) ), ( "description", (E_.maybe(\a_description_ -> (E.string (a_description_)) ) (a.description)) ), ( "url", (E.string (a.url)) ), ( "homepageUrl", (E_.maybe(\a_homepageUrl_ -> (E.string (a_homepageUrl_)) ) (a.homepageUrl)) ), ( "repositoryTopics", (E.object [ ( "nodes", (E.list(\a_repositoryTopics_nodes_ -> (E.object [ ( "topic", (E.object [ ( "name", (E.string (a_repositoryTopics_nodes_.topic.name)) ) ]) ) ]) ) (a.repositoryTopics.nodes)) ) ]) ) ])