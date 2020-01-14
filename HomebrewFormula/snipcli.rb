class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
	url "https://github.com/snipline/snipcli/releases/download/0.3.1/snipcli-0.3.1-macos_x86_64.tar.gz"
  sha256 "42538fcede7a2c04fd76e0dcb0adbc015543d184c03cd32f7292d9f1e75f59ef"

	depends_on "crystal"
	# depends_on "readline" => :recommended
	bottle :unneeded

  def install
    # system "shards", "install"
    # system "make", "install", "PREFIX=#{prefix}"
		bin.install "snipcli"
  end

  test do
    output = shell_output("#{bin}/snipcli --version")
    assert_match "0.3.1", output
  end
end
