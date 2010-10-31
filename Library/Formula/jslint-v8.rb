require 'formula'

class JslintV8 <Formula
  url 'git://github.com/jlbfalcao/jslint-v8.git'
  homepage 'http://github.com/jlbfalcao/jslint-v8'
  version 'HEAD'
  depends_on 'v8'

  def install
    v8path = "/usr/local/Cellar/v8/HEAD"
    system "g++ -o jslint jslint.cpp -I#{v8path}/include/ -lv8 -L#{v8path}/lib/"
    bin.install 'jslint'
  end

end