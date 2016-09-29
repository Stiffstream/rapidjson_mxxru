gem 'Mxx_ru', '>= 1.6.8'
require 'mxx_ru/externals'

MxxRu::git_externals :rapidjson do |e|
  e.url 'https://github.com/miloyip/rapidjson.git'
  e.commit 'ab791ae' # Latest at 2016.08.09
  e.map_dir 'include/rapidjson' => 'dev/rapidjson/include'
  e.map_dir 'example' => 'dev/sample'
end
