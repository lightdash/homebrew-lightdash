class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2582.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2582.0/lightdash-cli-0.2582.0-macos-arm64.tar.gz"
      sha256 "5f9949d850c1fb9ed81bc9e62e73884822450299344802a2bc46f0e0d456dd44"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2582.0/lightdash-cli-0.2582.0-macos-x64.tar.gz"
      sha256 "f5790dc08ead7a2f8092f319e733ccd1c9017bea31dbc5144cc3648adf34a7a4"
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
