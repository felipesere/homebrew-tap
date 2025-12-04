class Fzj < Formula
  desc "Fzf-like command-line tool that operates on JSON"
  homepage "https://github.com/felipesere/fzj"
  version "0.1.2-pre6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-macos-aarch64.tar.gz"
      sha256 "f6bbdbda2ed732509e0f69221f66b9539d9805fdd97e50f4c141362580e67764"
    else
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-macos-x86_64.tar.gz"
      sha256 "23069928677895694b5832fdc0707cbcac37b32d787dd50b128643e34e82287d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-linux-aarch64.tar.gz"
      sha256 "47354010f968acf98df6d3e43a1e5f85d28770cabd5fea4783c9f6be15745c8d"
    else
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-linux-x86_64.tar.gz"
      sha256 "614dcac9e32ce8700102492fe57f8b3f17741d027124ee100d199f6f1aa71dd0"
    end
  end

  def install
    bin.install "fzj"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fzj --version 2>&1", 2)
  end
end
