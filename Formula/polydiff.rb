class Polydiff < Formula
  desc "Choose various diffing tools based on file extensions"
  homepage "https://github.com/felipesere/polydiff"
  version "0.1.2"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/polydiff/releases/download/v#{version}/polydiff-macos-aarch64.tar.gz"
      sha256 "67dcd0927662f4dbcf41b77766dbbe5cddfbaf0fb294ef6a35ea2a7750ec0adf"
    else
      url "https://github.com/felipesere/polydiff/releases/download/v#{version}/polydiff-macos-x86_64.tar.gz"
      sha256 "3e5e6a1b2309a5fcf88fe088f9f3a7765871931a681b494d971362835e72dd24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/polydiff/releases/download/v#{version}/polydiff-linux-aarch64.tar.gz"
      sha256 "781d66ead4d372a9e1c1d5e5dff0bb99f812b504c86439c1659cb4241a69ff32"
    else
      url "https://github.com/felipesere/polydiff/releases/download/v#{version}/polydiff-linux-x86_64.tar.gz"
      sha256 "de98b1300961acfdfb850ae109af70d1c18d83fc03598ec91364bb26d817fd2c"
    end
  end

  def install
    bin.install "polydiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/polydiff --version 2>&1", 2)
  end
end
