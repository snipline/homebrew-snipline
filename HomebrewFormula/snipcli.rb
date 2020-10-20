class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
	url "https://github.com/snipline/snipcli/archive/0.5.0.tar.gz"
  sha256 "5e9af425c16fc2207d5b289dcb344ac7002a1c27625d83856cc725bdfc9d4778"

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
    assert_match "0.5.0", output
  end
end
