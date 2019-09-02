class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
  url "https://github.com/snipline/snipcli/archive/0.2.0.tar.gz"
  sha256 "d1a67db86b769d0cf3ec9e0e96bb653683c67518d1c1212426c06572b1bd0d63"

  depends_on "crystal"

  def install
    system "shards", "install"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/snipcli --version")
    assert_match "0.2.0", output
  end
end
