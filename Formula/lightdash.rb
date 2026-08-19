class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.206.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.206.0/lightdash-cli-1.206.0-macos-arm64.tar.gz"
      sha256 "c4cfc144f462c85fefc46d378e3a7d686a7a0eb9c8bd14a2a5c66b02aa56b2eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.206.0/lightdash-cli-1.206.0-macos-x64.tar.gz"
      sha256 "61ce9ade47cdd41caf6e97f6eb93bc463ed03827bdaf1e830070213749eea980"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
