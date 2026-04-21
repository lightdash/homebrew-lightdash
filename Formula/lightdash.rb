class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2770.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2770.0/lightdash-cli-0.2770.0-macos-arm64.tar.gz"
      sha256 "f91b1aa260d5c31ea4fff2878dcd929fe0aef201f51eb9fde9cb28fc32f53eea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2770.0/lightdash-cli-0.2770.0-macos-x64.tar.gz"
      sha256 "e0b053b8a65bd2b37165d76b56a0cf54161d1c46275f695ecb4bf29c782f43e6"
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
