---
title: "Generate Curriculum Vitae in multiple formats"
date: "2015-02-02"
description: ""
categories:
    - "general"
slug: "resume generator"
---

![](/images/post-cv-generator.png)

## Motivation

In the last week I've been updating my CV and finally I managed to build a nice one using the [moderncv](http://www.ctan.org/pkg/moderncv) class for LaTeX. You can see it [here](https://github.com/cristobalcl/resume/raw/master/output/cristobal-resume.pdf). The problem was when someone asked me the **Word** version of it (don't ask me why). As I wanted to have the [curriculum vitae](/cv) in this site updated too I look for a way to have my resume in multiple formats.

## My take

What was the solution? Well, maybe it's overkill but, anyway... This is the [source repository](https://github.com/cristobalcl/resume) of the scripts that generate my curriculum in several formats. Firstly there is a file called `resume.yaml` that have all the information about my CV in [YAML](http://www.yaml.org/). Then there is a directory called `templates`. The templates are [Mako](http://www.makotemplates.org/) files.

Two scripts are used to generate the files. One of them is a Python program that read the information from the YAML file and feeds the different templates to render versions of the CV in Markdown and LaTeX formats. The other one is a simple Bash script that deals with temporary directories, runs [Pandoc](http://johnmacfarlane.net/pandoc/) and `pdflatex`. Also, it compress the final PDF file.

At this moment it generates the resume in PDF, docx, ODT and Markdown format for [Hugo](http://gohugo.io/). In the `deploy.sh` script of the repository of this web I've added a `wget` command to get the last version of the CV every time the web is updated.

This system works, but it has some problems. For example, there is no easy way to add formatting in the resume, so I added a little hack: you can use `<*` and `*>` tags to emphasize. Another problem is that in Pandoc's Markdown you can not specify image size or alignment.

## Conclusions

So that's it. You can [fork](https://github.com/cristobalcl/resume/fork) it and write your own curriculum in the `resume.yaml`. Also you can add more templates. A HTML template would be very easy to do, for example, but also you can use Pandoc to generate it from the Markdown version. Something I've been considering is a way to export or import the LinkeId information using its API... Another possibility is to translate automatically to several languages. I leave this to you ;)
