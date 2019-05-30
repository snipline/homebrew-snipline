class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
  url "https://github.com/snipline/snipcli/archive/0.1.1.tar.gz"
  sha256 "847fc36d3578e8f25b223b20fde0fe0b50e6fc28def618e82e18525d3efdcb64"

  depends_on "crystal"

  def install
    system "shards", "install"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/snipcli --version")
    assert_match "0.1.1", output
  end
end
