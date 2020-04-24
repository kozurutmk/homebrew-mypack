require 'formula'

class Flock < Formula
  homepage 'https://github.com/discoteq/flock'
  version '0.4.0'
  url "https://github.com/discoteq/flock/releases/download/v#{version}/flock-#{version}.tar.xz"
  sha256 '01bbd497d168e9b7306f06794c57602da0f61ebd463a3210d63c1d8a0513c5cc'

  def install
    system './configure', '--disable-debug',
                          '--disable-dependency-tracking',
                          '--disable-silent-rules',
                          "--prefix=#{prefix}"
    system 'make', 'install'
  end

  test do
    system "#{bin}/flock", 'tmpfile', 'true'
  end
end
