class Everdiff < Formula
  desc "Tool for fancy diffing of YAML"
  homepage "https://github.com/felipesere/everdiff"
  version "0.1.5"
  license "mit"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-aarch64.tar.gz"
      sha256 "64e1acc2ad7048548145cc609ced8f554c482f439870c6a539fdace8d4a64dc4"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-x86_64.tar.gz"
      sha256 "693edaa0cb4cde0ccf371874e8460acf7118d6ee240b4aef5d9d043188a42c0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-aarch64.tar.gz"
      sha256 "2e4e7ca90fac2659ae05a154e01ad75c7fdb23f472fe13dd113c45c9f2244985"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-x86_64.tar.gz"
      sha256 "8a413c63ad407d033d04d8b013d2b34273c751d06f75ff6099b86cf8771c0de3"
    end
  end

  def install
    bin.install "everdiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everdiff --version 2>&1", 2)
  end
end
