export type Maybe<a> = a | null

export type Page = { siteTitle: string, pageFileName: string, layout: string, mtime: string, excerpt: string, markdown: string, data: string, data2: string }

export type Repo = { name: string, description: Maybe<string>, homepageUrl: Maybe<string>, url: string, isArchived: boolean, viewerHasStarred: boolean, stargazers: { totalCount: number }, repositoryTopics: { nodes: Array<{ topic: { name: string } }> } }
