class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2808.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2808.0/lightdash-cli-0.2808.0-macos-arm64.tar.gz"
      sha256 "5a8a711d84b5d35454cf167eb279f464297e889e993d3b5ed6d1d01f4e0c326d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2808.0/lightdash-cli-0.2808.0-macos-x64.tar.gz"
      sha256 "ede054e0adcf25026c5ebb0850e0168b25a03199c3192985ade12cc371839584"
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
