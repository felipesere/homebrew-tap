class Dia < Formula
  desc "Fancy YAML diffing"
  homepage "https://github.com/felipesere/dia"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-macos-aarch64.tar.gz"
      sha256 "ea939544fa580d2f496fb0b745a11f1d9473c86b0d8ae4deb3c4966a768c36ed"
    else
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-macos-x86_64.tar.gz"
      sha256 "cdf134eaf56d0fdbad92feb219381d55f9b8fb725883f1c3932a64d7f10f3c29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-linux-aarch64.tar.gz"
      sha256 "0bb803e6ab9ab304c9f72bceefb1c4fc7a958296932885370c0999bcdf034073"
    else
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-linux-x86_64.tar.gz"
      sha256 "e89d70b56a39c774f7bdd065dcebee684075c753d4e94c8acc748cae9ecbc60a"
    end
  end

  def install
    bin.install "dia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dia --version 2>&1", 2)
  end
end
