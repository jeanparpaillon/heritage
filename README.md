# Task: Heritage

Heritage is an application for displaying source code metadata thanks to [Software
Heritage Archive](https://www.softwareheritage.org/).

[Base repository](https://github.com/jeanparpaillon/heritage.git) has been set
up to remove overhead work. Feel free to start a new repository if you prefer to
work from a blank slate.

## Software Heritage Archive

The project aims at collecting and archiving each and every open source code.
The archive is accessible through both a [web
interface](https://archive.softwareheritage.org/browse/search/) and a [REST
API](https://archive.softwareheritage.org/api/).

## Requirements

You must demonstrate the following:
* you are able to write clean and legible code
* you are able to write performant code
* you are able to organise, document your code and your commits
* you are able to write tests that backs application code

## Objectives

Given a directory, the application must return:
* if this directory is part of an indexed project on Software Heritage
* if it is indexed, the list of files and associated license, if any

### Example

```elixir
iex(1)> results = Heritage.infos("/usr/src/linux")
[%Content{licenses: ["GPL-2.0"], name: ...} ...]
```

### Hints

* Retrieving a directory metadata is done through the following call:
  https://archive.softwareheritage.org/api/1/directory/doc/
* Directories are uniquely identified with a hash, computed as describe here:
  https://docs.softwareheritage.org/devel/apidoc/swh.model.identifiers.html#swh.model.identifiers.directory_identifier
* Computing the hash of a directory as well as retrieving data from SWH API
  should leverage parallelism of elixir.
  