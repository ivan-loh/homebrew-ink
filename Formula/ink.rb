class Ink < Formula
  desc "CLI for Standard Notes"
  homepage "https://github.com/ivan-loh/ink"
  license "MIT"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ivan-loh/ink/releases/download/v1.0.2/ink-v1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "b22fad31e4f0f4d06a9a2ec88cdda676e41f5e316c9985461b5f2756b5688aa8"
    else
      url "https://github.com/ivan-loh/ink/releases/download/v1.0.2/ink-v1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "b486d1359ce8b0c3af63260824e17bca4a7a69b6259df92d6465e40928322a29"
    end
  end

  on_linux do
    url "https://github.com/ivan-loh/ink/releases/download/v1.0.2/ink-v1.0.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f13072c593e670de570c8c14ece07f40ac2b1b42fd4a8d3a0926bf72375a5b40"
  end

  def install
    bin.install "ink"
    doc.install "README.md" if File.exist?("README.md")
  end

  test do
    assert_match "ink ", shell_output("#{bin}/ink --version")
  end
end
