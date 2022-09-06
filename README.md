# Product Engineering Technical Assessment

## Overview

This repository contains a small Sinatra application which renders a line-graph
with two generated data-sets. The goal of this assessment is not to produce a
perfect or polished resul but to show what you can do and figure out on a short
time table so that can iterate on it later in the process.

## Getting Started

### Get the assignment

1. This repository is a template repository. Please use the _`Use this template`_
to create a new _Private_ repository in your personal GitHub account:
<img src="./docs/artifacts/use_this_template.png" width="800px" height="246px" alt="Arrow pointing to the 'Use this template' button.">

2. On the next screen please select these options:
<img src="./docs/artifacts/create_new_private_repository.png" width="800px" height="617px" alt="Image indicating the use of a clear name, selecting Private as the repository visibility, and an arrow to 'Create repository from template'">

3. Add your Statype contact as an external contributor - they should have
  provided their Github Username but if they forgot please just ask:
<img src="./docs/artifacts/add_collaborator_to_private_repo.png" width="800px" height="500px" alt="Check that you have a private repository by looking for the lock button.  Click settings, then Collaborators, then 'Add people'.">

### Setting up your computer

_Prerequisites_:

- Ensure you have [VSCode](https://code.visualstudio.com/download) installed locally.
- Ensure you have [Docker](https://docs.docker.com/get-docker/) installed locally.

When you open this respository in VSCode you should be prompted to re-open the
project in a container which has Ruby pre-configured and libraries installed via
`bundle install`

### Up and Running

Once the devcontainer is running you can start the application via
`bundle exec ruby grapher.rb` which will connect the application to
your [localhost:4567]()

You can run all of the tests via `rake` or  `rake all` or the minitest tests via
`rake test` and the RSpecs via `rake spec`.

## The Assignments

### Add new stuff

Choose one of thse following assignments

#### Add a new page

##### "Stack ALL the Things"

Add a new route to the application which houses a stacked line graph that is
basically cohort graphs like everywhere else.

#### Add a new graph type (_Difficult_)

##### "Monkey Patch ApexCharts"

The [`styd/apexcharts.rb`](https://github.com/styd/apexcharts.rb) Ruby wrapper
to [ApexCharts](https://apexcharts.com/) does not provide all of the graph types
that the Javascript library provides - for example the Treemap graph type is not
supported.  Add support for Treemaps to this application such that there is a
`treemap(...)` view helper available to this application in exactly the same way
the `line_chart(...)` helper is provided by the Rubygem as seen in
`views/index.erb`.  The functionality you add should still call the ApexCharts
Treemap Javascript implementation as if the Ruby library had provided it.

### Talk about stuff and doing it

#### Testing

Part 1: Describe, defend, and critique your testing philosophy in less that 200
words per section.

_Example:_

> My testing philosophy at a high-level is ... (156 words)
>
> This philosophy allows [several good things] by [some behaviors] (193 words)
>
> This philosophy isn't always perfect [some ways it may not work out] (187 words)

Part 2: Assuming you prefer one of minitest or RSpec over the other, port the
existing (and any new specs from the above work) from your preferred tool to the
tool you prefer less.  If you have no preference flip a coin and include
photographic evidence of the coin-flip.

Describe any compromises you had to make in the process.  What improvements may
this change have introduced regardless of your initial preferences.
