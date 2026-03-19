class Nutag < Formula
  desc "Small tool to create tags on Github"
  homepage "https://github.com/felipesere/nutag"
  version "0.1.5"
  license "mit"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-macos-aarch64.tar.gz"
      sha256 "022e8755156c12fdc4e2c795be379bc3b738240e8f3be2bd183d86a3bd0381cd"
    else
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-macos-x86_64.tar.gz"
      sha256 "21bd9ea010f4e988cb21ecc2055bada54558597154f1c1bcfeb9610a4a5e3224"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-linux-aarch64.tar.gz"
      sha256 "ccad04d50b2e1d02753999b18d0880341b09114761aac6cc3968b0151599e244"
    else
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-linux-x86_64.tar.gz"
      sha256 "9235972b8948edde89a893a9c12184069ed1d225dcf70a6649e27b260b45248a"
    end
  end

  def install
    bin.install "nutag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nutag --version 2>&1", 2)
  end
end
