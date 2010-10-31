require 'formula'

class Jsbeautify <Formula
  url 'git://github.com/einars/js-beautify.git'
  homepage 'http://github.com/einars/js-beautify'
  version 'HEAD'

  depends_on 'v8'

  def install
    v8path = "/usr/local/Cellar/v8/HEAD"
    system "cd v8 && g++ -o jsbeautify jsbeautify.cpp -I#{v8path}/include/ -lv8 -L#{v8path}/lib/ && ls"
    system "ls v8"
    bin.install 'v8/jsbeautify'
  end
end
