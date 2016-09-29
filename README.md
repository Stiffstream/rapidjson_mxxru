# What Is It?

A light mxxru wrapper for RapidJSON library.

# How To Use

## Prerequisites

To use *rapidjson_mxxru* it is necessary to have:

* C++11 compiler (VC++14.0, GCC 5.1 or above, clang 3.6 or above);
* [rapidjson](https://github.com/miloyip/rapidjson).

## Obtaining

### Cloning of Hg Repository

```
hg clone https://bitbucket.org/sobjectizerteam/rapidjson_mxxru-0.4
```
And then:
```
cd rapidjson_mxxru-0.4
mxxruexternals
```
to download and extract *rapidjson_mxxru*'s dependencies.

### MxxRu::externals recipe

For *rapidjson_mxxru* itself:
~~~~~
::ruby
MxxRu::arch_externals :rapidjson_mxxru do |e|
  e.url 'https://bitbucket.org/sobjectizerteam/rapidjson_mxxru-0.4/get/v.0.4.0.tar.bz2'

  e.map_dir 'dev/rapidjson_mxxru' => 'dev'
end
~~~~~

For *rapidjson* dependency:
~~~~~
::ruby
MxxRu::git_externals :rapidjson do |e|
  e.url 'https://github.com/miloyip/rapidjson.git'
  e.commit 'ab791ae' # Latest at 2016.08.09
  e.map_dir 'include/rapidjson' => 'dev/rapidjson/include'
end
~~~~~

## Compilation

RapidJSON is header only library.
To test mxxru wrapper and build RapidJSON samples:
```
hg clone https://bitbucket.org/sobjectizerteam/rapidjson_mxxru-0.4
cd rapidjson_mxxru-0.4
mxxruexternals
cd dev
ruby build.rb
```

*NOTE.* It might be necessary to set up `MXX_RU_CPP_TOOLSET` environment variable.

# License

*rapidjson_mxxru* is distributed under
[BSD-3-Clause](http://spdx.org/licenses/BSD-3-Clause.html) license. See LICENSE
file for more information.

For the license of *RapidJSON* library see LICENSE file in *rapidson*
distributive.
