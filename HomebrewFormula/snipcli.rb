class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
	url "https://github.com/snipline/snipcli/archive/0.3.3.tar.gz"
  sha256 "ec51e207417fde3b668de0290442f09842336c34a8ee82ab209e7dd01966b6cc"

	depends_on "crystal"
	# depends_on "readline" => :recommended
	bottle :unneeded

  def install
    system "shards", "install"
    system "make", "install", "PREFIX=#{prefix}"
		# bin.install "snipcli"
  end

  test do
    output = shell_output("#{bin}/snipcli --version")
    assert_match "0.3.3", output
  end
end
