class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
	url "https://github.com/snipline/snipcli/releases/download/0.3.0/snipcli.tar.gz"
  sha256 "f43ce21817bb0bac9c84010282ef46ca0ada0a2288f780cbfc6738066acc7be7"

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
    assert_match "0.3.0", output
  end
end
