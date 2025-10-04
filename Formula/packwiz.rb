class Packwiz < Formula
  desc "Command-line tool for creating, maintaining, and installing Minecraft modpacks"
  homepage "https://github.com/packwiz/packwiz"
  url "https://github.com/packwiz/packwiz/archive/adfe66935c410cdeebabbce702abe65fb1b90ddb.tar.gz"
  sha256 "f5f92f0ee72bf88bbc1a3beb23583611229b942e01119ff115d42fc0e6d7fa12"
  version "0.0.0-adfe669"
  license "MIT"
  head "https://github.com/packwiz/packwiz.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[-s -w]
    # Bygg från modulroten (INTE ./cmd/packwiz)
    system "go", "build", *std_go_args(output: bin/"packwiz", ldflags: ldflags), "."
    # (valfritt) generera completions om du vill:
    # generate_completions_from_executable(bin/"packwiz", "completion")
  end

  test do
    assert_match(/packwiz/i, shell_output("#{bin}/packwiz --help 2>&1"))
  end
end
