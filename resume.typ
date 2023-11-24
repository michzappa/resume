#set page(
    paper: "us-letter",
    margin: 0.5in,
)

#set text(
    font: "Linux Libertine",
    size: 10pt,
    hyphenate: false,
)

#show heading.where(
    level: 1,
): it => block(width: 100%)[
    #set text(font: "Linux Libertine", size: 2em, weight: "regular"
    )
    #it.body
    #v(0.1em)
]
    
#show heading.where(
    level: 2,
): it => block(width: 100%)[
    #set align(left)
    #set text(font: "Linux Libertine", size: 1em,  weight: "regular")
    #v(-1em)
    #smallcaps(it.body)
    #v(-0.75em)
    #line(length: 100%, stroke: 1pt + black)
]
    
#align(center)[
    = Michael Zappa
    (+1) 952-388-7465 | #underline(link("mailto:me@michzappa.com")) | #underline(link("https://www.linkedin.com/in/michael-zappa/")[linkedin.com/in/michael-zappa])
]

== Education
#v(-1em)
#block(width: 100%, above: 0em, inset: 1em)[
    #text(weight: "bold")[Khoury College of Computer Sciences, Northeastern University] #h(1fr) Boston, MA
    #v(-0.6em)
    #text(style: "italic")[Bachelor of Science in Computer Science, Minor in Linguistics] #h(1fr) #text(style: "italic")[Aug. 2018 #sym.dash.en May 2023]
    #list(
        indent: 1em,
        [GPA: 3.9/4.0, Dean’s List all semesters, Honors Program],
        [Relevant Coursework: Software Engineering, Compilers, Computer Systems, Networks and Distributed Systems, Systems Security, Programming Languages, Object Oriented Design, Algorithms and Data Structures, Foundations of Cybersecurity.],
        [Attended Dialogue of Civilization in the North of Ireland focused on the role of storytelling in community activism, conflict resolution, and conflicted identities.]
    )
]

== Experience
#v(-1em)
#block(width: 100%, above: 0em, inset: 1em)[
    #text(weight: "bold")[Associate Professional Staff 1] #h(1fr) Sep. 2023 #sym.dash.en Present
    #v(-0.6em)    
    #text(style: "italic")[Johns Hokpins Applied Physics Laboratory] #h(1fr) #text(style: "italic")[Laurel, MD]
    // #v(-0.2em)
    #list(
        indent: 1em,
        [Member of the Cyber Concepts and Exploration (QCE) group.]
    )
]

#v(-1em)
#block(width: 100%, above: 0em, inset: 1em)[
    #text(weight: "bold")[SDE Co-Op] #h(1fr) July 2022 #sym.dash.en Dec. 2022
    #v(-0.6em)    
    #text(style: "italic")[Amazon Global Robotics] #h(1fr) #text(style: "italic")[Westborough, MA]
    #list(
        indent: 1em,
        [Participated in organization-wide Innovation project concerning robotic movement.],
        [Debugged production service issues and supported on-call teammates.],
        [Performed critical load-balancer partition and migration for team’s core service.],
        [Took ownership of service on deprecation path; addressed risks, communicated with customers, began deletion.],
        [Investigated and justified team-level decisions for service architecture.],
        [Created, modified, and deleted alarms across multiple services and regions.]
    )
]

#v(-1em)
#block(width: 100%, above: 0em, inset: 1em)[
    #text(weight: "bold")[Software Developer Co-Op] #h(1fr) July 2021 #sym.dash.en Jan. 2022
    #v(-0.6em)    
    #text(style: "italic")[Smartleaf Inc.] #h(1fr) #text(style: "italic")[Boston, MA]
    #list(
        indent: 1em,
        [Specified, implemented, and tested API endpoints requested by clients in the wealth management industry.],
        [Patched sequence bug in Ruby database adapter when importing large batches of rows.],
        [Conducted security audit and corresponding upgrades of Ruby and JavaScript dependencies.],
        [Created automated performance and A/B tests of application across different environments.],
        [Coordinated release pipeline between developer and business teams.],
        [Fulfilled client deliverables ahead of schedule.],
        [Interviewed and onboarded new team members at multiple levels of seniority.]
    )
]

== Projects
#v(-1em)
#block(width: 100%, above: 0em, inset: 1em)[
    #text(weight: "bold")[Klox Language] #h(1fr) Aug. 2022 #sym.dash.en Sep. 2022
    #v(-0.2em)
    #list(
        indent: 1em,
        [Implemented an interpreter #super(link("https://github.com/michzappa/klox")[[#text(fill: red)[1]]]) for the Lox programming language in Kotlin.],
        [Extended language to include native lists and a standard library.],
        [Attempted additional compilation to Scheme, made challenging by the difference in assignment semantics.],
        [Package JVM and native versions using Nix Package Manager.]
    )
]

== Technical Skills
#block(width: 100%,
    [#list(
        indent: 1em, marker: "",
        [#text(weight: "bold")[Programming Languages:] Java, Python, OCaml, Ruby, C, SQL]
    )]
)
#v(0.8em)

== Interests
#list(
    indent: 1em, marker: "",
    [#text(weight: "bold")[Computing:] Reproducible packages and systems, programming languages and compilers, formal verification.],
    [#text(weight: "bold")[Other:] Linguistics and natural languages, fantasy/sci-fi books, geography, rugby.]
)        
