require 'formula'

class Logpp <Formula
  url 'http://downloads.sourceforge.net/project/logpp/logpp/0.16/logpp-0.16.tar.gz'
  homepage 'http://logpp.sourceforge.net/'
  md5 'a1a9d42f7139fe97829122ad25b4c3b3'

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
