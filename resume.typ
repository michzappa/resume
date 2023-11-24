#set page(
    paper: "us-letter",
    margin: 0.5in,
)

#set text(
    font: "Linux Libertine",
    size: 10pt,
)

#show heading.where(
    level: 1,
): it => block(width: 100%, below: 0em)[
    #set text(size: 2em, weight: "regular")
    #it.body
]

#show heading.where(
    level: 2,
): it => block(width: 100%, spacing: 0em)[
    #set align(left)
    #set text(size: 1em,  weight: "regular")
    #smallcaps(it.body)
    #v(-0.75em)
    #line(length: 100%, stroke: 1pt + black)
]

#let top_header(name, ..contacts) = {
    align(center)[
        = #name
        #v(1em)
        #contacts.pos().join(" | ")
    ]
}

#let dual_title_subheader(left_1, right_1, left_2, right_2, ..entries) = {
    block(width: 100%, spacing: 0em, inset: 1em)[
        #text(weight: "bold")[#left_1] #h(1fr) #right_1
        #v(-0.6em)
        #text(style: "italic")[#left_2] #h(1fr) #text(style: "italic")[#right_2]
        #list(
            indent: 1em,
            ..entries
        )
    ]
}

#let single_title_subheader(left_1, right_1, ..entries) = {
    block(width: 100%, spacing: 0em, inset: 1em)[
        #text(weight: "bold")[#left_1] #h(1fr) #right_1
        #list(
            indent: 1em,
            ..entries
        )
    ]
}

#let zero_title_subheader(..entries) = {
    block(width: 100%, spacing: 0em, inset: 1em)[
        #list(
            indent: 0em, marker: "",
            ..entries
        )
    ]
}
    
#top_header("Michael Zappa", underline(link("mailto:me@michzappa.com")), underline(link("https://www.linkedin.com/in/michael-zappa/")[linkedin.com/in/michael-zappa]))

== Education
#dual_title_subheader([Khoury College of Computer Sciences, Northeastern University], [Boston, MA],
    [Bachelor of Science in Computer Science, Minor in Linguistics], [Aug. 2018 #sym.dash.en May 2023],
    [GPA: 3.9/4.0, Dean’s List all semesters, Honors Program],
    [Relevant Coursework: Software Engineering, Compilers, Computer Systems, Networks and Distributed Systems, Systems Security, Programming Languages, Object Oriented Design, Algorithms and Data Structures, Foundations of Cybersecurity, Logic and Computation.],
    [Attended, and assisted, study abroad in the North of Ireland focused on the role of storytelling in community activism, conflict resolution, and conflicted identities.])


== Experience
#dual_title_subheader([Associate Professional Staff 1], [Sep. 2023 #sym.dash.en Present],
    [Johns Hokpins Applied Physics Laboratory], [Laurel, MD],
    [Member of the Cyber Concepts and Exploration (QCE) group.]
)

#dual_title_subheader([SDE Co-Op], [July 2022 #sym.dash.en Dec. 2022],
    [Amazon Global Robotics], [Westborough, MA],
    [Participated in organization-wide Innovation project concerning robotic movement.],
    [Debugged production service issues and supported on-call teammates.],
    [Performed critical load-balancer partition and migration for team’s core service.],
    [Took ownership of service on deprecation path; addressed risks, communicated with customers, began deletion.],
    [Investigated and justified team-level decisions for service architecture.],
    [Created, modified, and deleted alarms across multiple services and regions.]
)

#dual_title_subheader([Software Developer Co-Op], [July 2021 #sym.dash.en Jan. 2022],
    [Smartleaf Inc.], [Boston, MA],
    [Specified, implemented, and tested API endpoints requested by clients in the wealth management industry.],
    [Patched sequence bug in Ruby database adapter when importing large batches of rows.],
    [Conducted security audit and corresponding upgrades of Ruby and JavaScript dependencies.],
    [Created automated performance and A/B tests of application across different environments.],
    [Coordinated release pipeline between developer and business teams.],
    [Fulfilled client deliverables ahead of schedule.],
    [Interviewed and onboarded new team members at multiple levels of seniority.])

== Projects
#single_title_subheader([Klox Language], [Aug. 2022 #sym.dash.en Sept. 2022],
    [Implemented an interpreter #super(link("httpsefef")[\[#text(fill: red)[1]\]]) for the Lox programming language in Kotlin.],
    [Extended language to include native lists and a standard library.],
    [Attempted additional compilation to Scheme, made challenging by the difference in assignment semantics.],
    [Package JVM and native versions using Nix Package Manager.])
                
== Technical Skills
#zero_title_subheader(
    [#text(weight: "bold")[Programming Languages:] Java, Python, OCaml, Ruby, Lisp, C, SQL],
    [#text(weight: "bold")[Tools:] Git, GitLab CI, Docker, Nix])

== Interests
#zero_title_subheader(
    [#text(weight: "bold")[Computing:] Reproducible packages and systems, programming languages and compilers, formal verification.],
    [#text(weight: "bold")[Other:] Linguistics and natural languages, fantasy/sci-fi books, geography, rugby.])
