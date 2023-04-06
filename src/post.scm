(define post-template
  (lambda (title description hero)
    `(html
      ((head
        (title "Blog | The White Acre")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/style.css")))
        (link (@ (rel "stylesheet") (href "/static/post.css")))
        (link (@ (rel "stylesheet") (href "/static/prism.css")))
        (link (@ (rel "stylesheet") (href "https://cdn.jsdelivr.net/npm/katex@0.16.3/dist/katex.min.css")))
        (link (@ (rel "preconnect") (href "https://fonts.googleapis.com")))
        (link (@ (rel "preconnect") (href "https://fonts.gstatic.com")))
        (link (@ (rel "stylesheet") (href "https://fonts.googleapis.com/css2?family=Open+Sans:wght@500;700&display=block")))        
        (script (@ (src "/static/iframeresizer.min.js")) ""))
      (body
        (div (@ (class "home"))
          (header
            (div (@ (class "wrapper"))
              (a (@ (href "/") (class "logo")) (img (@ (src "/static/logo.svg"))))
              (nav
                (a (@ (href "/research")) "Publications")
                (a (@ (href "/models")) "Models")
                (a (@ (href "/notebooks")) "Notebooks"))))

          (main
            (div (@ (class "hero") (style ,(conc "background-image: url(" hero ")")))
              (div (@ (class "overlay")) "")
                (div (@ (class "wrapper"))
                  (h1 ,title)
                  (p ,description)))

            (div (@ (class "article"))
              (div (@ (class "wrapper"))
                (div (@ (class "content"))
                  (ARTICLE-CONTENT)
                )
              )
            )
          )

          (div (@ (class "reference"))
            (p "Hero images generated with neural networks via " (a (@ (href "https://midjourney.com")) "midjourney") ". This website's " (a (@ (href "https://github.com/tjwhitaker/thewhiteacre")) "source code") " was written entirely in scheme!"))
            
          (footer
            (div (@ (class "wrapper"))
              (div (@ (class "column"))
                (h2 "Site")
                (a (@ (href "/about")) "About")
                (a (@ (href "/models")) "Models")
                (a (@ (href "/notebooks")) "Notebooks")
                (a (@ (href "/research")) "Research"))
              (div (@ (class "column"))
                (h2 "Links")
                (a (@ (href "https://arxiv-sanity-lite.com")) "Arxiv Sanity")
                (a (@ (href "https://paperswithcode.com")) "Papers With Code")
                (a (@ (href "https://news.ycombinator.com")) "Hacker News")
                (a (@ (href "https://www.youtube.com/c/pbsspacetime")) "Space Time"))
              (div (@ (class "column"))
                (h2 "Self")
                (a (@ (href "#")) "CV")
                (a (@ (href "https://github.com/tjwhitaker")) "Github")
                (a (@ (href "https://lichess.org/@/tjwhitaker")) "Lichess")
                (a (@ (href "https://orcid.org/0000-0003-3792-3901")) "Orcid")
                )))))))))