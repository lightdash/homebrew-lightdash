class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2913.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2913.1/lightdash-cli-0.2913.1-macos-arm64.tar.gz"
      sha256 "bd8bf93c6733f216272e807505c6f1a04f48d1472e7f3fc9943adb56a66c3dc1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2913.1/lightdash-cli-0.2913.1-macos-x64.tar.gz"
      sha256 "ee65ff74590aa44b9deca38f9baf39224bfaf5e4896ca19a8c61ba07b7647c05"
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
