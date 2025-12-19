class Dia < Formula
  desc "mit"
  homepage "https://github.com/felipesere/dia"
  version "0.1.5"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-macos-aarch64.tar.gz"
      sha256 "2b943f70b5bae4b8645095f87507e02ecba6c8efd07387e96c36cbcb2a7751d4"
    else
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-macos-x86_64.tar.gz"
      sha256 "0deeb0da14925cb08a652f8ffeb9b1b3bfc3adb0a52fa639eceef9ba5e6b1fb1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-linux-aarch64.tar.gz"
      sha256 "187ef55dd31dbc1d5b5861445a3fac02b1f505948fb4e0d61c11df300a8ab5b7"
    else
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-linux-x86_64.tar.gz"
      sha256 "4d64ff8b47665f61570337b174518e0194414fdb11b97bbf405495f39da41340"
    end
  end

  def install
    bin.install "dia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dia --version 2>&1", 2)
  end
end
