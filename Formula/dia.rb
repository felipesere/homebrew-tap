class Fzj < Formula
  desc "Calendar display tool"
  homepage "https://github.com/felipesere/dia"
  version "0.1.1-pre0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-macos-aarch64.tar.gz"
      sha256 "ab1b63244e06fd5ba7b7a8a31b69a4df901c82076781e9e1e780f5590220667d"
    else
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-macos-x86_64.tar.gz"
      sha256 "d630b84c59b60ad58769c686bf284ac8ed161888c40bd1f06e9dea57c40f27bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-linux-aarch64.tar.gz"
      sha256 "a569ac059cdffbbe65206e6449a657c59f5f00bb7f26e3b4c626d9cdf746685e"
    else
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-linux-x86_64.tar.gz"
      sha256 "22f55cdb4fca204f6f5c953894a6e73d282fe05d6d563c5b5c9ae481d9f3d121"
    end
  end

  def install
    bin.install "dia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dia --version 2>&1", 2)
  end
end
