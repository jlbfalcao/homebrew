require 'formula'

class JslintV8 <Formula
  head 'git://github.com/jlbfalcao/jslint-v8.git'
  homepage 'http://github.com/jlbfalcao/jslint-v8'

  depends_on 'v8'

  def install
    v8_prefix = Formula.factory('v8').prefix
    system "g++ -o jslint jslint.cpp -I#{v8_prefix}/include/ -lv8 -L#{v8_prefix}/lib/"
    bin.install 'jslint'
  end

end
