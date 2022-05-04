# lawtex
(Bib)LaTeX tools for law

## Why?

A common argument against using LaTeX for legal publications is that legal citation styles are impossible to imitate using standard BibLaTeX styles.

While there exist some packages trying to remedy this problem, they are often buggy (because they build on buggy styles or because they introduce bugs) and, more importantly, very hard to debug due to their many layers (styles building on other styles, ..., building on base styles). 

To make things hackable, it is useful to have everything in one place. 
This repository is an attempt to achieve this, overfitted to the citation style of a very specific law journal from Germany: RabelsZ. 
Not everything is implemented, because we didn't need everything in the paper that set off this project.
It's a work in progress, and usage is documented (in German) in the `main.pdf`.

The style is "flat" in the sense that default behavior is only changed by the code immediately present in the style sheets.
This helps to figure out what BibLaTeX thinks by default (check out the BibLaTeX manual or the default files in the base folder, which the compiler will have natively available), 
and determine what exactly needs to be changed to make it behave differently _without introducing unintended side effects_.

The current implementation is still very hacky and poorly documented, so use at your own risk.
We are making it public anyways in the hope that it will be useful to someone.

Bug reports and feature requests are welcome (as issues)!
