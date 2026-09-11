class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.197.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.197.3/lightdash-cli-2.197.3-macos-arm64.tar.gz"
      sha256 "d0da9c7173866eaada17291af70a8b0f23bd55dec7dcfe50ed021255824a7ccd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.197.3/lightdash-cli-2.197.3-macos-x64.tar.gz"
      sha256 "cf2a3d72a0d8105e09518c48812372b39f3c3d551080607ec157df2016c5978a"
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
