require 'formula'

class Jsbeautify <Formula
  head 'git://github.com/einars/js-beautify.git'
  homepage 'http://github.com/einars/js-beautify'

  depends_on 'v8'

  def install
    v8_prefix = Formula.factory('v8').prefix
    system "g++ -o jsbeautify v8/jsbeautify.cpp -I#{v8_prefix}/include/ -lv8 -L#{v8_prefix}/lib/"
    bin.install 'jsbeautify'
  end
end