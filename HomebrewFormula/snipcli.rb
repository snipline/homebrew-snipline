class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
  url "https://github.com/snipline/snipcli/archive/0.3.0.tar.gz"
  sha256 "fda5337103d5f19c909b926167546b82f8d9936b9785c5953faccb91d9ddce95"

	depends_on "crystal"

  def install
    system "shards", "install"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/snipcli --version")
    assert_match "0.3.0", output
  end
end
