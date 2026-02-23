class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2509.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2509.1/lightdash-cli-0.2509.1-macos-arm64.tar.gz"
      sha256 "5409ad06ebf8936b35c36c37bbc5f342c70c081c5b1946e6543b4809f2886888"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2509.1/lightdash-cli-0.2509.1-macos-x64.tar.gz"
      sha256 "b746173b71cd0187572ddea6ac3d29ab55482b12a3181f02fa39ed6e07598471"
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
