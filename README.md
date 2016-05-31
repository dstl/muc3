# muc3
This is the text corpus created by the [DARPA TIPSTER Program](https://en.wikipedia.org/wiki/DARPA_TIPSTER_Program) for the third [Message Understanding Conference (MUC-3)](https://en.wikipedia.org/wiki/Message_Understanding_Conference) in 1991, and reused for MUC-4 in 1992, before finding a permanent home at the [National Institute of Standards and Technology (NIST)](http://www.nist.gov/) when the TIPSTER Program finished. The corpus contains news reports covering terrorist activities in Latin America.

The authoritative source of this data is the [NIST Information Extraction](http://www-nlpir.nist.gov/related_projects/muc/) site. It can be downloaded as a compressed tar file from the [MUC Data Sets](http://www-nlpir.nist.gov/related_projects/muc/muc_data/muc_data_index.html) link there. The data comes as five large plain text files, which have been split up and reformatted here so that each news item is in a separate HTML file.

## Why?
The purpose of this project is twofold. Firstly, it provides a (well known) reference dataset for anyone wishing to experiment with text analytics, and splitting up the messages into HTML files is a better approximation of how similar news items might appear "in the wild" than the original text. Secondly, we wish to encourage discussion and experimentation about knowledge representation of facts extracted from text. In particular, the use of HTML here opens up the possibility of capturing the results of information extraction as semantic mark-up in the original HTML.

See [the project Wiki] (https://github.com/dstl/muc3/wiki) for more.

## HTML
Each message is formatted as XHTML with Dublin Core metadata elements for the "identifier", "date" and "coverage" header fields. Some effort has been made to use blank lines in messages to split the body of each message into HTML paragraphs, but the text is otherwise unchanged.

## License
MUC-3 data is in the public domain. Hence the HTML version here is licensed under the [Creative Commons CC0 1.0 Universal (CC0 1.0)](https://creativecommons.org/publicdomain/zero/1.0/) public domain dedication. Please include a link to the [NIST MUC project](http://www-nlpir.nist.gov/related_projects/muc/) in any derived work.
