# Merging Builder - Example

## Introduction

The package [`merging_builder`][merging_builder] provides two types of Dart builders
* `MergingBuilder`, a builder that reads **several input files** and writes the merged output
to **one output file**,
* `StandaloneBuilder`, a builder that reads **one input file** and writes
the generated output to a **standalone** file that can be located in a different
folder and have a user defined suffix.

The example presented here contains two packages:

1. The package [`researcher_builder`][researcher_builder]
depends on [`merging_builder`][merging_builder] in order to define the
builder [`AddNamesBuilder`][add_names_builder]
and the generator [`AddNameGenerator`][add_names_generator].

2. The package [`researcher`][researcher] depends on [`researcher_builder`][researcher_builder],
specified as a *dev_dependency*, in order to access and configure
the builder [`AddNamesBuilder`][add_names_builder].

## Build Setup

Step by step instructions on how to set up and configure a [`MergingBuilder`][MergingBuilder] are provided in
the section [usage]. For more details regarding the build setup consult
the `build.yaml` files in [`researcher`][researcher] and [`researcher_builder`][researcher_builder].

To build the package [`researcher`][researcher] clone the project
[`merging_builder_example`][merging_builder_example],
navigate to the root directory of [`researcher`][researcher]
and issue the command:
```Term
$ dart run build_runner build --delete-conflicting-outputs --verbose
```

## Features and bugs
Please file feature requests and bugs at the [issue tracker].

[issue tracker]: https://github.com/simphotonics/merging_builder_example/issues

[add_names_builder]: researcher_builder/lib/builder.dart

[add_names_generator]: researcher_builder/lib/src/generators/add_names_generator.dart

[builder]: https://github.com/dart-lang/build

[merging_builder]: https://pub.dev/packages/merging_builder

[merging_builder_example]: https://pub.dev/packages/merging_builder_example

[MergingBuilder]: https://pub.dev/documentation/merging_builder/latest/merging_builder/MergingBuilder-class.html

[researcher]: researcher

[researcher_builder]: researcher_builder

[usage]: https://github.com/simphotonics/merging_builder#usage
