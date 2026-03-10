class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2600.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2600.0/lightdash-cli-0.2600.0-macos-arm64.tar.gz"
      sha256 "bb4a282bef3e04bff8c11e27fd8b1a2d732a626c7da177c6b765d579a4c17774"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2600.0/lightdash-cli-0.2600.0-macos-x64.tar.gz"
      sha256 "4824945e356d60ac72329d2dbe341967d0e7352952407a72c45a88d6186b640c"
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
