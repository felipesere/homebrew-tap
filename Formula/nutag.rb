class Nutag < Formula
  desc "Small tool to create tags on Github"
  homepage "https://github.com/felipesere/nutag"
  version "0.1.6"
  license "mit"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-macos-aarch64.tar.gz"
      sha256 "85dd7e6f53d6c9d699a0d54f9be1d96a24963e977b0ec97581a043dd4d369e9e"
    else
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-macos-x86_64.tar.gz"
      sha256 "65ca4a8418540772519e12ecf384f70293406289c580077aa7386cbcb666f8aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-linux-aarch64.tar.gz"
      sha256 "fc8fdd3eb7caa611791958125e9ae02531d397e572ef6d11d8cd175396d8fbf4"
    else
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-linux-x86_64.tar.gz"
      sha256 "7a6efbaa5e495d8bac10b655047854fbb816c333533e4757106ed1a60faca863"
    end
  end

  def install
    bin.install "nutag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nutag --version 2>&1", 2)
  end
end
