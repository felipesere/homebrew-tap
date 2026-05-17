class Everdiff < Formula
  desc "Tool for fancy diffing of YAML"
  homepage "https://github.com/felipesere/everdiff"
  version "0.1.10"
  license "mit"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-aarch64.tar.gz"
      sha256 "512ac8b5bfe2c44c276db293fc7b4cc079a38b313c26d7fc6497b8f283b67ef2"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-x86_64.tar.gz"
      sha256 "7550fc8655f7a69b52758465b59b31d35302b054863e0c621ebf6b13bdccad37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-aarch64.tar.gz"
      sha256 "b3e011f5989c50d5839b4c6af9442d5dbdd18326524b1ab5c762a099e2328725"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-x86_64.tar.gz"
      sha256 "e7faabf126c9ad9481562fac311045a1fdb33095bb5ace54dbac1a0f8507c148"
    end
  end

  def install
    bin.install "everdiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everdiff --version 2>&1", 2)
  end
end
