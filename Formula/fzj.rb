class Fzj < Formula
  desc "Fzf-like command-line tool that operates on JSON"
  homepage "https://github.com/felipesere/fzj"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-macos-aarch64.tar.gz"
      sha256 "e8930cdff41751d5d15d749c1108576d20e5da3f3892d32a10865e1d2f299a15"
    else
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-macos-x86_64.tar.gz"
      sha256 "87b49420c482bdbe716cb80f2858827060e97c36d1d560723eb471d7bbee6fcd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-linux-aarch64.tar.gz"
      sha256 "5b2e7f453c64a033cfa2412dcabe39ffca0e48b73a422fe117baf4328f6995b7"
    else
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-linux-x86_64.tar.gz"
      sha256 "2afcd98a8f0a9d3bf2b0d546fa3d0aade2d8c2edd00fb878026ee4f81dded263"
    end
  end

  def install
    bin.install "fzj"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fzj --version 2>&1", 2)
  end
end
