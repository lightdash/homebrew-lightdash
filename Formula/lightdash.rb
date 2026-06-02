class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3073.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3073.0/lightdash-cli-0.3073.0-macos-arm64.tar.gz"
      sha256 "d722721afc2f58234952759bb9bc47e89c38edecf4362f49b909885128e6a639"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3073.0/lightdash-cli-0.3073.0-macos-x64.tar.gz"
      sha256 "f0c149fe4f58ab3964670ccafdaee0200aba27a090a08732bbfb3619cb47c373"
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
