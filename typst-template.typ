#let letterhead(
  name: "Your Name",
  title: "Your Title",
  room: "Your Room Number",
  phone: "Your Phone Number",
  email: none,
  website: none,
  logo: "cornell"
) = {
  // Define logos based on selected option
  let logo_path = match logo {
    "cornell" => "CornellLogoRed.png",
    "cis" => "BowersCIS.png",
    "cs" => "CS2lineRed.png",
    "is" => "IS.png",
    "sds" => "SDS.png",
    _ => "CornellLogoRed.png" // Default to Cornell logo
  }

  // Layout settings
  set page(margin: (1in, 1in, 1in, 1in))
  set text(font: "Source Sans Pro", size: 11pt)

  // Render header
  align(left)[
    image(logo_path, width: 3.5in)
    h(0.5in)
    grid(columns: (3.9in, 1.1in, 3.6in))[
      "",
      "",
      align(right)[
        strong(name) \\
        title \\
        "" \\
        room \\
        "Ithaca, NY 14853-7501" \\
        "t: " + phone \\
        if email != none { "email: " + link("mailto:" + email, email) } \\
        if website != none { link(website, website) }
      ]
    ]
  ]
}

// Example Usage
#show: letterhead.with(
  name: "John Doe",
  title: "Lecturer in Information Science",
  room: "Room 123, Gates Hall",
  phone: "+1 (607) 255-XXXX",
  email: "jdoe@cornell.edu",
  website: "https://johndoe.com",
  logo: "cis"
)
