class Ink < Formula
  desc "CLI for Standard Notes"
  homepage "https://github.com/ivan-loh/ink"
  license "MIT"
  version "1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ivan-loh/ink/releases/download/v1/ink-v1-aarch64-apple-darwin.tar.gz"
      sha256 "1724ea45d6d8d5b7d9effce4a5cabef9c95b31da364c95e67c439604c6d40142"
    else
      url "https://github.com/ivan-loh/ink/releases/download/v1/ink-v1-x86_64-apple-darwin.tar.gz"
      sha256 "dde49d8146f35fd55575c07a7a2e6c69914b5ba2b53539180276c9b3be64a2e9"
    end
  end

  on_linux do
    url "https://github.com/ivan-loh/ink/releases/download/v1/ink-v1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "989eb0b34192e98825220a55899cc33e2fa2a092654eb1ef1b2ed9aabe15b081"
  end

  def install
    bin.install "ink"
    doc.install "README.md" if File.exist?("README.md")
  end

  test do
    assert_match /^ink \d+\.\d+\.\d+$/, shell_output("#{bin}/ink --version")
  end
end
