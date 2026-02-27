class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2541.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2541.1/lightdash-cli-0.2541.1-macos-arm64.tar.gz"
      sha256 "5add811a16085275c4d107f47019d51bc2e2d76c06335b27a1ca71e3f52d6f9e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2541.1/lightdash-cli-0.2541.1-macos-x64.tar.gz"
      sha256 "c140762ec01a8c4c0b9c9231a4b71ce44bb0fdf9e5481fbe033fb2a8edfe2127"
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
