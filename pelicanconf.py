#!/usr/bin/env python
# -*- coding: utf-8 -*- #

AUTHOR = 'Aaron Lee'
SITENAME = 'SIPI Tech'
#SITEURL = 'https://blog.sipi.tech'
SITESUBTITLE = 'a blog for everything about tech'
GITHUB_URL = 'https://github.com/leeooox'

PATH = 'content'

TIMEZONE = 'Asia/Shanghai'
DATE_FORMATS = {'zh_cn': '%b %d, %Y'}
DEFAULT_LANG = 'zh_cn'



# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (('Pelican', 'https://getpelican.com/'),
         ('Python.org', 'https://www.python.org/'),
         ('Jinja2', 'https://palletsprojects.com/p/jinja/'),
         ('You can modify those links in your config file', '#'),)

# Social widget
SOCIAL = (('You can add links in your config file', '#'),
          ('Another social link', '#'),)

#DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True

DEFAULT_DATE = 'fs'
AUTHOR = 'Aaron Lee'


#DISQUS_SITENAME = 'sipitech'
COMMENTBOX_PROJECT = '5726956779732992-proj'

CODE_DIR = 'code'
STATIC_PATHS =['images','code']

PLUGIN_PATHS = ["../pelican-plugins"]
#PLUGINS = ['sitemap', 'extract_toc', 'tipue_search', 'liquid_tags.img', 'neighbors', 'latex', 'related_posts', 'assets', 'share_post', 'multi_part']
PLUGINS = ['sitemap', 'extract_toc', 'tipue_search', 'liquid_tags.img','liquid_tags.include_code', 
            'section_number','neighbors', 'related_posts', 'render_math','code_include']
#MD_EXTENSIONS = ['codehilite(css_class=highlight,linenums=True)', 'extra', 'headerid', 'toc(permalink=true)', 'fenced_code', ]

SITEMAP = {
    'format': 'xml',
    'priorities': {
         'articles': 0.5,
         'indexes': 0.5,
         'pages': 0.5
     },
     'changefreqs': {
         'articles': 'monthly',
         'indexes': 'daily',
         'pages': 'monthly'
     }
}

#MATH_JAX = {'source': "'https://mathjax.josephjctang.com/MathJax.js?config=TeX-MML-AM_HTMLorMML'"}
MATH_JAX = {'source': "'https://cdn.bootcdn.net/ajax/libs/mathjax/3.2.0/es5/tex-mml-chtml.js'"}


# Appearance
THEME = 'theme/elegant'
TYPOGRIFY = True
DEFAULT_PAGINATION = False
