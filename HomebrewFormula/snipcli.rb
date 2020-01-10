class Snipcli < Formula
  desc "Snipline CLI is the command-line tool for Snipline"
  homepage "https://snipline.io/"
	url "https://github.com/snipline/snipcli/releases/download/0.3.0/snipcli.tar.gz"
  sha256 "b3db863d2e8701275ad185afb1fc61be9f4edde48be436a6479726e36f1d4fa3"

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
