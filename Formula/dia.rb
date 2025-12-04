class Dia < Formula
  desc "Calendar display tool"
  homepage "https://github.com/felipesere/dia"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-macos-aarch64.tar.gz"
      sha256 "fe338ba774011f11d860a44511d729ccbb480e385fecf25850f9290f99d6f137"
    else
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-macos-x86_64.tar.gz"
      sha256 "41a133f0bf90f5fce4cd77055b7643c3454e48868e33d3c44ce5557ea73d7e94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-linux-aarch64.tar.gz"
      sha256 "f7ad4bdd861ab08bfd580abbf4a8404f938d0e4614e1869ecd1688ffe862e1ed"
    else
      url "https://github.com/felipesere/dia/releases/download/v#{version}/dia-linux-x86_64.tar.gz"
      sha256 "1fd8eec98ba4e201cf3e9ff2531c195eca57370f0edca7c9eac0aaf9781ef526"
    end
  end

  def install
    bin.install "dia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dia --version 2>&1", 2)
  end
end
