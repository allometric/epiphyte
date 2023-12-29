# epiphyte
A meta package for administering allometric.

Ideas:

Some tasks of allometric can take up a lot of nonsense time. `epiphyte` will help by automating or semi-automating some of these tasks. Here are some ideas for what we can speed up

1. Extracting citations from a paper and making GitHub issues for them.

There are a lot of omnibus publications, which are valuable resources containing references to primary sources of models. In some cases, these omnibus publications provide curated
lists of references, and in some exceptional cases we also get .bib files. It would be nice to auto-ingest these into GitHub issues, while also scanning for existing publications
in `models.RDS`.

2. Improve omnibus publication tracking

Related to (1) we should improve the tracking of omnibus publications. Our general philosophy is not to add these directly, instead add the primary source material. In some cases
omnibus publications also have primary material, in which case it can be added.

Here is a general idea:

- Somehow parse a .bib file from the omnibus publication (e.g., Zotero reference plugin, or some other method).
- From this parsed .bib file, create the omnibus publication issue on GitHub
- Create each component pub as a separate issue, and reference the omnibus issue number, this will link them all to the same source
- Somehow we should check to see if similar publications are already in `models.RDS` before adding them as a new issue to avoid overlap. This will not be perfect, but some effort here is warranted
