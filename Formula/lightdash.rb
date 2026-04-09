class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2740.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2740.3/lightdash-cli-0.2740.3-macos-arm64.tar.gz"
      sha256 "427496339e43e22413d99c167a57362e713cf1a8462766130c5835c10848add8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2740.3/lightdash-cli-0.2740.3-macos-x64.tar.gz"
      sha256 "24d459965950c52c537ef95a6c97b563ffd817826cd4405008d53b3fc5e75224"
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
