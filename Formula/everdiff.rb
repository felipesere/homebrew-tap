class Everdiff < Formula
  desc "Fancy YAML diffing"
  homepage "https://github.com/felipesere/everdiff"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-aarch64.tar.gz"
      sha256 "f0921b33ca3747098a844547caf15e25204550ceae1dc8b1a4b88fc16dffd2e0"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-macos-x86_64.tar.gz"
      sha256 "862105187112e57c90c898a99566eccd7ee9cb75e9f4e8611837ddfc0ab0588a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-aarch64.tar.gz"
      sha256 "1dde7071f6743ca0e395371f5fb54afc0a3466183008974b8f34c0c4fb341041"
    else
      url "https://github.com/felipesere/everdiff/releases/download/v#{version}/everdiff-linux-x86_64.tar.gz"
      sha256 "94aceced32a4fa91c09b0ab7a18f89fe9617a7d6f33628401097b8ed63134850"
    end
  end

  def install
    bin.install "everdiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everdiff --version 2>&1", 2)
  end
end
