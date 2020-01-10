class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
	url "https://github.com/snipline/snipcli/releases/download/0.3.0/snipcli.tar.gz"
  sha256 "0f97cd2ce261effc236e4171fab0b019f435f651c15640672fc1c48e31f5c63b"

	depends_on "crystal"
	depends_on "readline" => :recommended

  def install
    # system "shards", "install"
    # system "make", "install", "PREFIX=#{prefix}"
    system "make", "cp", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/snipcli --version")
    assert_match "0.3.0", output
  end
end
