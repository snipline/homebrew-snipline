class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
  url "https://github.com/snipline/snipcli/archive/0.1.0.tar.gz"
  sha256 "d4a1c251bf2b329f05a723465a06483920618d09ebb2b456222494755638915e"

  depends_on "crystal"

  def install
    system "shards", "install"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/snipcli --version")
    assert_match "0.1.0", output
  end
end
