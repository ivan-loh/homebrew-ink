class Ink < Formula
  desc "CLI for Standard Notes"
  homepage "https://github.com/ivan-loh/ink"
  license "MIT"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ivan-loh/ink/releases/download/v1.0.3/ink-v1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "d78d1145f72ca4f8aa5ff84ecb58d9c0314dcc71408c801b8208610dd04ad09e"
    else
      url "https://github.com/ivan-loh/ink/releases/download/v1.0.3/ink-v1.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "24c4fdd6a4f9675178274a7a34b53956158b9f125f23f827c184d7e11d45667e"
    end
  end

  on_linux do
    url "https://github.com/ivan-loh/ink/releases/download/v1.0.3/ink-v1.0.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "da941feddbddafd0427844fce5ed38d1d954c6a0ae3085b32ac0d3ea2242245b"
  end

  def install
    bin.install "ink"
    doc.install "README.md" if File.exist?("README.md")
  end

  test do
    assert_match "ink ", shell_output("#{bin}/ink --version")
  end
end
