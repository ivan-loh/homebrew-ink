class Ink < Formula
  desc "CLI for Standard Notes"
  homepage "https://github.com/ivan-loh/ink"
  license "MIT"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ivan-loh/ink/releases/download/v1.0.4/ink-v1.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "b0be55a4cc59c9d04199c339491f90143fcb33192836d0a9aea80c25406ff375"
    else
      url "https://github.com/ivan-loh/ink/releases/download/v1.0.4/ink-v1.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "acb35c666fd61fab900a4ee00e8ceaa4f94a173f94b4b3c1aa04f0dba3eea690"
    end
  end

  on_linux do
    url "https://github.com/ivan-loh/ink/releases/download/v1.0.4/ink-v1.0.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c42b99e5eb24e48beddccf7b60335a5a9eaba78e649947061892875072a26053"
  end

  def install
    bin.install "ink"
    doc.install "README.md" if File.exist?("README.md")
  end

  test do
    assert_match "ink ", shell_output("#{bin}/ink --version")
  end
end
