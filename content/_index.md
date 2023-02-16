---
title: words and things
enableToc: false
---

{{ $paginator := .Paginate (where .Pages "Type" "posts") }}
{{ template "_default/section.html" . }}
