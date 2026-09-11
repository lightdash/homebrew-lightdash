class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.202.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.202.0/lightdash-cli-2.202.0-macos-arm64.tar.gz"
      sha256 "aa55d14b0668bab5016eafdda9131d82b5571410a233c7d30540930ea62c1151"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.202.0/lightdash-cli-2.202.0-macos-x64.tar.gz"
      sha256 "e08a0040362f04a27e53a6caf79dd670c673ba69dd3dcbdf766f4d85b1f89b59"
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
