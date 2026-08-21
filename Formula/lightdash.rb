class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.232.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.232.0/lightdash-cli-1.232.0-macos-arm64.tar.gz"
      sha256 "1b20a6e1170f1f69d556cb5bac3199d98eeea407fd4c4c1be90f8ccf3ee15f24"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.232.0/lightdash-cli-1.232.0-macos-x64.tar.gz"
      sha256 "b12215777287efb4a519cd5519abbefa12df065814e16c4c1b40741467115944"
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
