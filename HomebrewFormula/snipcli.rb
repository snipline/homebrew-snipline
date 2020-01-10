class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
	url "https://github.com/snipline/snipcli/releases/download/0.3.0/snipcli.tar.gz"
  sha256 "ed116a85011095d206e178130237f742575644c8ec436a3eeca8ef9d0eb219c4"

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
