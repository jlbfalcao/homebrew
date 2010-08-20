require 'formula'

class Mvnsh <Formula
  url 'http://repo2.maven.org/maven2/org/sonatype/maven/shell/mvnsh-assembly/0.10/mvnsh-assembly-0.10-runtime.zip'
  homepage 'http://github.com/sonatype/mvnsh'
  md5 '8a8250d700485a42cc1c07a140eea040'
  version '0.10' 

  def install
    prefix.install %w[bin etc scripts lib]
  end
end
