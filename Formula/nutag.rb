class Nutag < Formula
  desc "Small tool to create tags on Github"
  homepage "https://github.com/felipesere/nutag"
  version "0.1.3"
  license "mit"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-macos-aarch64.tar.gz"
      sha256 "36d46d73408736766ae0816103eca5d67f00bfe3a27b2933287826e03c026129"
    else
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-macos-x86_64.tar.gz"
      sha256 "0e301ca06ecfd6b5178c94f56dc39d268fd0271514c0a963cf19b4ffb8ef2c3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-linux-aarch64.tar.gz"
      sha256 "030c9db4dc9d1381c4be7dc3662db32f6fc470726f34cc6505c5ab549a99c13d"
    else
      url "https://github.com/felipesere/nutag/releases/download/v#{version}/nutag-linux-x86_64.tar.gz"
      sha256 "868687dfc98e2c64cc164fb5a9a42bd688c0f1de09e281355d10c58a17498b04"
    end
  end

  def install
    bin.install "nutag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nutag --version 2>&1", 2)
  end
end
