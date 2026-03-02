class Ink < Formula
  desc "CLI for Standard Notes"
  homepage "https://github.com/ivan-loh/ink"
  license "MIT"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ivan-loh/ink/releases/download/v1.0.5/ink-v1.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "4263c8e488d67f62d154a49918e1e458d6b409fd5f8a76dfed4d9db1e510ca8b"
    else
      url "https://github.com/ivan-loh/ink/releases/download/v1.0.5/ink-v1.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "1289eae3bfa9149aa06c51fd77c4a203faa93717a9a179cba25613df263fb2fb"
    end
  end

  on_linux do
    url "https://github.com/ivan-loh/ink/releases/download/v1.0.5/ink-v1.0.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8a67f4f78a48348c1ebc435c1de180b409da67493b28db37c4c2570f686017a8"
  end

  def install
    bin.install "ink"
    doc.install "README.md" if File.exist?("README.md")
  end

  test do
    assert_match "ink ", shell_output("#{bin}/ink --version")
  end
end
