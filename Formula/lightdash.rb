class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2851.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2851.0/lightdash-cli-0.2851.0-macos-arm64.tar.gz"
      sha256 "584b67e87f570c4c698e37c06d169c50c15e79142a0a54b44f0a209ee3bfc844"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2851.0/lightdash-cli-0.2851.0-macos-x64.tar.gz"
      sha256 "41e26c7a2331c339b1e670f852fcbc351aedd6a97bcae62884e9eee156f4fac2"
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
