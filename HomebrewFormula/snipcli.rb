class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
  url "https://github.com/snipline/snipcli/archive/0.1.2.tar.gz"
  sha256 "fb247ab111c7acc36c29f3212fb49e4dc4e65afbf57b5707fa1c4b3ce6a480be"

  depends_on "crystal"

  def install
    system "shards", "install"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/snipcli --version")
    assert_match "0.1.2", output
  end
end
