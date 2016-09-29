#!/usr/bin/ruby
require 'mxx_ru/cpp'

files = Dir.chdir('sample'){ Dir.glob( 'example/*/*cpp' ) }

files.each do|f|
  base_name = File.basename( f, ".cpp" )

  prj_desc =  <<-EOS
MxxRu::Cpp::exe_target {
  target "sample.#{ base_name }"

  required_prj 'rapidjson_mxxru/prj.rb'

  cpp_source '#{f}'
}
EOS

  File.open( "sample/sample.#{base_name}.rb", "wb" ){|f| f << prj_desc }
end

MxxRu::Cpp::composite_target{
  Dir.glob( 'sample/sample.*.rb' ).each{|p| required_prj( p ) }
}
