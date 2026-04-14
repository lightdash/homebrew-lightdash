class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2758.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2758.0/lightdash-cli-0.2758.0-macos-arm64.tar.gz"
      sha256 "682d847d913893c9a4d494a6f9282c03af881a7501624c714766dac89fd2386f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2758.0/lightdash-cli-0.2758.0-macos-x64.tar.gz"
      sha256 "1180a61ac8d5d834f7d71ff286cde100c388de1cf6f4daa71f55eb170cc9b19f"
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
