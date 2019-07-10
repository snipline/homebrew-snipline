class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
  url "https://github.com/snipline/snipcli/archive/0.1.5.tar.gz"
  sha256 "bdcdcf59caf8a71bf0a7a1e6f2026c2e84c92b8c499fdfa1a33ef4b7a2270fb7"

  depends_on "crystal"

  def install
    system "shards", "install"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/snipcli --version")
    assert_match "0.1.5", output
  end
end
