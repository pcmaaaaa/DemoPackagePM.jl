using DemoPackagePM
using Documenter

DocMeta.setdocmeta!(DemoPackagePM, :DocTestSetup, :(using DemoPackagePM); recursive=true)

makedocs(;
    modules=[DemoPackagePM],
    authors="Pingchuan Ma <mapingchuan@wustl.edu> and contributors",
    repo="https://github.com/pcmaaaaa/DemoPackagePM.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackagePM.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://pcmaaaaa.github.io/DemoPackagePM.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/pcmaaaaa/DemoPackagePM.jl",
    devbranch="main",
)
