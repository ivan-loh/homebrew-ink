class Ink < Formula
  desc "CLI for Standard Notes"
  homepage "https://github.com/ivan-loh/ink"
  license "MIT"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ivan-loh/ink/releases/download/v1.0.1/ink-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "2714f32e19d0198815dc43f9a559d062ba8d522d432bdf8be601851a30aff58a"
    else
      url "https://github.com/ivan-loh/ink/releases/download/v1.0.1/ink-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "cbdb14ebb963c63484866988994bc85b337fc44f88fa7c4652dd83524cff1251"
    end
  end

  on_linux do
    url "https://github.com/ivan-loh/ink/releases/download/v1.0.1/ink-v1.0.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "be70f44f813de0352535ae5bbe4982979dd867413425439377a1b96e001fc48d"
  end

  def install
    bin.install "ink"
    doc.install "README.md" if File.exist?("README.md")
  end

  test do
    assert_match "ink ", shell_output("#{bin}/ink --version")
  end
end
