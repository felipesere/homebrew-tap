class Everdiff < Formula
  desc "Fancy YAML diffing"
  homepage "https://github.com/felipesere/everdiff"
  version "0.1.4-pre0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-aarch64.tar.gz"
      sha256 "f31844921d18bd60e2c16cfce73fc10da7e2e8d69fba0aec88e718e5e881989a"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-x86_64.tar.gz"
      sha256 "6d6a2aee507ff541edcfdf95d41efcf0514dd2911db8e117da1cc9c71cab3e40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-aarch64.tar.gz"
      sha256 "3fa8a383e755b7659ba291d9e73d58e3b0e3bfd8a1d5fff2c81dc2050fa3bb6b"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-x86_64.tar.gz"
      sha256 "f61d886e035de0c503dc22e2086a02ba04149b0a1ff3f9360eafa748d5a6cf44"
    end
  end

  def install
    bin.install "everdiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everdiff --version 2>&1", 2)
  end
end
