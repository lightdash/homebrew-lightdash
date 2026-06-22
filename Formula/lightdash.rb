class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3212.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3212.0/lightdash-cli-0.3212.0-macos-arm64.tar.gz"
      sha256 "ac38a2661dca041fda2d75133c623916ba76c98dcf43855d123c752ec8532f34"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3212.0/lightdash-cli-0.3212.0-macos-x64.tar.gz"
      sha256 "40f94161f5629d87cd123f5b2cb74a6b7bcca9008ee360452c6dc6acc9155eba"
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
