class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
  url "https://github.com/snipline/snipcli/archive/0.1.3.tar.gz"
  sha256 "a8fa7e8caf18e2fdbec91901c5b7bc7641177ee92faaa0addcd438ba347986b0"

  depends_on "crystal"

  def install
    system "shards", "install"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/snipcli --version")
    assert_match "0.1.3", output
  end
end
