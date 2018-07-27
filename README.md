# README

### Tus

https://tus.io

An open protocol for resumable uploads

### Shrinerb

https://shrinerb.com

File Attachment toolkit for Ruby applications which have many feature and tools to do the following:
- S3 storage
- Direct upload to S3 - [link](https://shrinerb.com/rdoc/files/doc/direct_s3_md.html)
- Resumable Uploads - [link](https://github.com/shrinerb/shrine#resumable-uploads)
- integrates to a Tus server via tus-ruby-server

### tus-ruby-server

https://github.com/janko-m/tus-ruby-server

A Ruby server for the tus resumable upload protocol. It implements the core 1.0 protocol.
It integrates with Shrine via [shrine-tus](https://github.com/shrinerb/shrine-tus)
This can be set up to run as standalone web app on Goliath web server (see below)

### Goliath

Is an asychronous web server built on top of [EventMachine](https://github.com/eventmachine/eventmachine), which supports streaming requests and streaming responses.
This allows the following:
"Asynchronous streaming requests allows the tus server to begin saving uploaded data while it's still being received. If the request is interrupted, the tus server will attempt to save as much of the data that was received so far. This means it's not necessary for the tus client to split the upload into multiple smaller requests."

### Uppy (frontend)

https://uppy.io/

Supports resumable file uploads via the open tus standard
