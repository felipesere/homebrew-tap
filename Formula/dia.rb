class Dia < Formula
  desc "Calendar display tool"
  homepage "https://github.com/felipesere/dia"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-macos-aarch64.tar.gz"
      sha256 "fdef296e851522bc1b76563e569cb15758049cfa2bb09e4d97a17993b8486300"
    else
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-macos-x86_64.tar.gz"
      sha256 "ed5bf5b02fe7800aa09e7e0b715fe936bbfe440dc05af5b17ae80d05d665e772"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-linux-aarch64.tar.gz"
      sha256 "89bbb567550a3f33c9c5024b1841e8a0fadebd05aa43dd1690842413256686da"
    else
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-linux-x86_64.tar.gz"
      sha256 "2f9360d6a6152e8790db770de7b3ad7ed92e1a9c73e54957d6d9fb1e982cce79"
    end
  end

  def install
    bin.install "dia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dia --version 2>&1", 2)
  end
end
