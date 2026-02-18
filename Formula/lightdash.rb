class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2485.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2485.0/lightdash-cli-0.2485.0-macos-arm64.tar.gz"
      sha256 "15d7c3fde563c6db4c89cfcf56bb8555b23746c3dbb508740d36d4369e9c7bb2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2485.0/lightdash-cli-0.2485.0-macos-x64.tar.gz"
      sha256 "97739f23bdfad7863be62aa2499899a4683d756ab6dcaaa84a6588fb84995c37"
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
