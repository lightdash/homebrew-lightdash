class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2538.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2538.1/lightdash-cli-0.2538.1-macos-arm64.tar.gz"
      sha256 "04ae81724ba69011237df5ec6fa9ab93d28644e2a7ad06feca29de04a6566dc5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2538.1/lightdash-cli-0.2538.1-macos-x64.tar.gz"
      sha256 "5e1dbb1bb85f39cd6a485dc026390c93749391cc005668bac1e97fa657d8a7ef"
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
