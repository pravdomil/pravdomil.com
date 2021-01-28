module App.App.Repository.Decode exposing (..)

{-| Generated by elm-json-interop.
-}

import App.App.Repository.Repository as A
import Utils.Json.Decode_ as D_
import Json.Decode as D exposing (Decoder)


response : Decoder A.Response
response =
  (D.map (\a -> { data = a }) (D.field "data" (D.map (\a -> { viewer = a }) (D.field "viewer" (D.map (\a -> { repositories = a }) (D.field "repositories" (D.map (\a -> { nodes = a }) (D.field "nodes" (D.list (repository))))))))))

repository : Decoder A.Repository
repository =
  (D.map5 (\a b c d e -> { name = a, description = b, url = c, homepageUrl = d, repositoryTopics = e }) (D.field "name" (D.string)) (D_.maybeField "description" (D_.maybe (D.string))) (D.field "url" (D.string)) (D_.maybeField "homepageUrl" (D_.maybe (D.string))) (D.field "repositoryTopics" (D.map (\a -> { nodes = a }) (D.field "nodes" (D.list (D.map (\a -> { topic = a }) (D.field "topic" (D.map (\a -> { name = a }) (D.field "name" (D.string))))))))))
