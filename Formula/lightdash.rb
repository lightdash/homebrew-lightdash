class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2271.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.2/lightdash-cli-0.2271.2-macos-arm64.tar.gz"
      sha256 "5d003c502bb41c3cf4836c9ecfb586c945f9f44748a2d7a5dbff14093832c927"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.2/lightdash-cli-0.2271.2-macos-x64.tar.gz"
      sha256 "567b375407dbc8106bf752dbaf572a01940375493e9648447ce590d0b113a5f2"
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
