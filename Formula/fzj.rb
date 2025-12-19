class Fzj < Formula
  desc ""
  homepage "https://github.com/felipesere/fzj"
  version "0.1.3"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-macos-aarch64.tar.gz"
      sha256 "9ca74eb28d6a81493709516d8acfaa5d79db13f311046fa695bd8feea4efc63e"
    else
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-macos-x86_64.tar.gz"
      sha256 "ba5c9b9e7c53aec960a6fab619df371a0e26b7ce5648010a33926bd4852b9d60"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-linux-aarch64.tar.gz"
      sha256 "e40e0c29418bc8744236c4619085bbb800fe9e94aa5701bbb79ac33818eb348b"
    else
      url "https://github.com/felipesere/fzj/releases/download/v#{version}/fzj-linux-x86_64.tar.gz"
      sha256 "291411f6b324e0cb4c66c80875c168295bc7c2d12240cfc79af7d7ada269eaf1"
    end
  end

  def install
    bin.install "fzj"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fzj --version 2>&1", 2)
  end
end
