class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2619.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2619.0/lightdash-cli-0.2619.0-macos-arm64.tar.gz"
      sha256 "e3f992cf0bac9b4e30da7136dbda39a085345a052913758e07a4935813b72347"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2619.0/lightdash-cli-0.2619.0-macos-x64.tar.gz"
      sha256 "92fb55d814047a981f8f6827cc191939c8cfa5f8b834ff8ff0c9be1524be3d55"
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
