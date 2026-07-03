class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3307.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3307.1/lightdash-cli-0.3307.1-macos-arm64.tar.gz"
      sha256 "c124ac0adb5543ff652981412372a4d914780464e6e07d4449ba92eee76facd0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3307.1/lightdash-cli-0.3307.1-macos-x64.tar.gz"
      sha256 "e5bcbcce15358e1dc16600d94aaad0495f55e0430ba0bdeb30a904bca117c24b"
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
