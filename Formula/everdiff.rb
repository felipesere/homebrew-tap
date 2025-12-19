class everdiff < Formula
  desc "Fancy YAML diffing"
  homepage "https://github.com/felipesere/everdiff"
  version "0.1.4-pre4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-aarch64.tar.gz"
      sha256 "851900b68e4672d492f0ea72cdcea20306b1e4fe0000c07d9b7a03e02ff30b9e"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-x86_64.tar.gz"
      sha256 "5876f51090bcd3bc4ad39204918c1dc3ee0eb88b530891ad5834103a6a322b88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-aarch64.tar.gz"
      sha256 "e7a3c866340950e950defc06f22ed9bccda054fe7850915b663f1f5ce20c7381"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-x86_64.tar.gz"
      sha256 "494c95b715ed40de1d61aa0c3cab7b9a91f71556086b955338528d7de1220868"
    end
  end

  def install
    bin.install "everdiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everdiff --version 2>&1", 2)
  end
end
