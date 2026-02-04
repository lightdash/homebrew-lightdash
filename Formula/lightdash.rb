class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2421.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2421.0/lightdash-cli-0.2421.0-macos-arm64.tar.gz"
      sha256 "8c66ae7abc7832560315fd5dbba46853376e8c8d3ca03531ff8005919eeb26c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2421.0/lightdash-cli-0.2421.0-macos-x64.tar.gz"
      sha256 "f4f3924d6b56f57d3e90b07cf7dd0b035757555528f72eee62b7be16e430a9bc"
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
