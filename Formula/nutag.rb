class Nutag < Formula
  desc "Small tool to create tags on Github"
  homepage "https://github.com/felipesere/nutag"
  version "0.1.8"
  license "mit"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-macos-aarch64.tar.gz"
      sha256 "786d2df3e20087dbb3a78eb25904eafa99c5cd9441a90eaf12c6943361582229"
    else
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-macos-x86_64.tar.gz"
      sha256 "4582b974bd44b1def4e182e3448fc1242b2632b1288352b59c71d9b52a7bdcea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-linux-aarch64.tar.gz"
      sha256 "3339344608d4fd0350c466862162469c3761e20fb306cfa270e3e40e1e4e0320"
    else
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-linux-x86_64.tar.gz"
      sha256 "046509e1c95717a559d8d94d218de163385a0db5366f7278574add2f0acfff52"
    end
  end

  def install
    bin.install "nutag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nutag --version 2>&1", 2)
  end
end
