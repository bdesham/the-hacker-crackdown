# The Hacker Crackdown

An ebook of _The Hacker Crackdown: Law and Disorder on the Electronic Frontier_ by Bruce Sterling.

## How to get it

Navigate to [the latest release][latest] and choose a format to download: EPUB, HTML, or Markdown. If you would like a different format, see [“Building the ebook yourself”][building].

[latest]: https://github.com/bdesham/the-hacker-crackdown/releases/latest
[building]: #building-the-ebook-yourself

## Notes on the text

There are already multiple copies of this book floating around the internet. Why am I adding yet another one? None of the existing editions had good typography (meaning curly quotes and real em dashes and italics). Plus, by releasing a version that is specifically designed to be ingested by [Pandoc], I’m making it easier to convert the book to Markdown, PDF, DOCX, or any other format that people want.

I started with the HTML files prepared by Bryan O’Sullivan and hosted [on MIT’s website][MIT]. I made passes through the text to convert straight quotes to curly quotes, fix the HTML tags, and so on, as reflected in the Git commit history. Finally, I ran each HTML file through Pandoc to clean up the markup and whitespace. The individual HTML files live in the “source” directory.

If you spot a typo, please feel free to open a pull request or an issue!

[Pandoc]: http://pandoc.org/
[MIT]: http://www.mit.edu/hacker/hacker.html

## Building the ebook yourself

You will need to have [Pandoc] and GNU Make installed.

Clone this repository and navigate to your clone on the command line. Then you can run

- `make html` to produce `The_Hacker_Crackdown.html`, the book as a single HTML page;
- `make epub` to produce `The_Hacker_Crackdown.epub`, the book in EPUB format;
- `make markdown` to produce `The_Hacker_Crackdown.md`, the book in Markdown format with Pandoc’s extensions; or
- `make all` for all of the above.

Pandoc supports many more formats than just these three. If you would like the book in a different format, open the Makefile, copy one of the `pandoc` invocations, and tweak it as necessary.

## License

Copyright © 1992 by Bruce Sterling.

In the introduction to the book, Sterling writes:

> If you go and buy a print version of _The Hacker Crackdown,_ an action I encourage heartily, you may notice that in the front of the book, beneath the copyright notice—“Copyright (C) 1992 by Bruce Sterling”—it has this little block of printed legal boilerplate from the publisher. It says, and I quote:
>
> > No part of this book may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying, recording, or by any information storage and retrieval system, without permission in writing from the publisher. For information address: Bantam Books.
>
> This is a pretty good disclaimer […] however, it isn’t quite accurate. Bantam Books puts that disclaimer on every book they publish, but Bantam Books does not, in fact, own the electronic rights to this book. I do, because of certain extensive contract maneuverings my agent and I went through before this book was written. I want to give those electronic publishing rights away through certain not-for-profit channels, and I’ve convinced Bantam that this is a good idea.
>
> […]
>
> You can copy this electronic book. […] You can upload the book onto bulletin board systems, or Internet nodes, or electronic discussion groups. Go right ahead and do that, I am giving you express permission right now. Enjoy yourself.
>
> You can put the book on disks and give the disks away, as long as you don’t take any money for it.
>
> But this book is not public domain. You can’t copyright it in your own name. I own the copyright. Attempts to pirate this book and make money from selling it may involve you in a serious litigative snarl.

The version of the book in this repository has been prepared by me, [Benjamin Esham](https://esham.io). I have made only formatting-related changes to the text and so these files are still completely covered by Bruce Sterling’s copyright.

The scripts in the “travis_scripts” folder were adapted from scripts written by Taylor Fausak for the [Octane] project. They are released under [the license of that project][Octane license].

[Octane]: https://github.com/tfausak/octane
[Octane license]: https://github.com/tfausak/octane/blob/04ea434f476d30c3c8327d8ed9afdc6ae246f2ae/LICENSE.markdown

## Version history

* v1 (2018-03-13): Initial release.
