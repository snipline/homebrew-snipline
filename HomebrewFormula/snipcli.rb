class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
	url "https://github.com/snipline/snipcli/releases/download/0.3.0/snipcli_macos.tar.gz"
  sha256 "080b93778797eb4c77b641c06a65f6e19791e89a208a351f2535dcb80c3333e1"

	depends_on "crystal"

  def install
    # system "shards", "install"
    # system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/snipcli --version")
    assert_match "0.3.0", output
  end
end
