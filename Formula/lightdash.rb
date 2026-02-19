class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2487.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2487.0/lightdash-cli-0.2487.0-macos-arm64.tar.gz"
      sha256 "3f964ffef2e753eb6022f54f652c3f99a23d8b9c781ab279337808930ea73b24"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2487.0/lightdash-cli-0.2487.0-macos-x64.tar.gz"
      sha256 "5331bd8f4d3f431101f55e0f10fd054cbbe66c0c387e8b988d7fe8e7e6e79200"
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
