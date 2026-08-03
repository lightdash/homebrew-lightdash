class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.65.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.65.1/lightdash-cli-1.65.1-macos-arm64.tar.gz"
      sha256 "1ef85e3c87b64ca6782362d93d6607058965a8477a99860d72ba152980f4fc5e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.65.1/lightdash-cli-1.65.1-macos-x64.tar.gz"
      sha256 "33272d06c986293e9de9b5cd325632f91b9d35685fa38224733a7d8bc9844f54"
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
