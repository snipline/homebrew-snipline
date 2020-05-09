class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
	url "https://github.com/snipline/snipcli/archive/0.4.0.tar.gz"
  sha256 "e1f208f2764c1802f8fc8513707fab569a8d7fcea5b4be592225ea434d0d01b7"

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
    assert_match "0.4.0", output
  end
end
