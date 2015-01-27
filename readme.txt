Sadly, as of January 2015, there is no widely supported way to permit embedding on only
specified sites. X-Frame-Options ALLOW-FROM and Content-Security-Policy frame-ancestors
would work if browsers supported them. We could try to read the user agent string and send
a browser-specific header if a supported browser is detected. But if we falsely detect a
supported browser, we'll send a header that totally breaks the embedding. So that option
seems unworkable.

X-Frame-Options SAMEORIGIN does work cross-browser. However, it's useless for embedding
Discourse. According to Jeff Atwood, Discourse requires its own subdomain. So there's no
way we can put the main SJS Rails app and Discourse on the same origin.