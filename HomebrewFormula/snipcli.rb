class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
  url "https://github.com/snipline/snipcli/archive/0.1.4.tar.gz"
  sha256 "90dc27b0c4af088ee0f7841aa3cd73dd6adccf240f84f503141d904aef85d268"

  depends_on "crystal"

  def install
    system "shards", "install"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/snipcli --version")
    assert_match "0.1.4", output
  end
end
