class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
	url "https://github.com/snipline/snipcli/releases/download/0.3.0/snipcli.tar.gz"
  sha256 "953c383f4dc0df4b9c428d020350124d4770a370441924eea8ebe5be079777bf"

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
