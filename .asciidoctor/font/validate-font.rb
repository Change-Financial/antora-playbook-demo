# Used for validating AsciiDoctor PDF fonts
# Refer to https://docs.asciidoctor.org/pdf-converter/latest/theme/prepare-custom-font/ for more info
require 'ttfunk'
require 'ttfunk/subset_collection'

ttf_subsets = TTFunk::SubsetCollection.new TTFunk::File.open ARGV[0]
(0...(ttf_subsets.instance_variable_get :@subsets).size).each {|idx| ttf_subsets[idx].encode }
