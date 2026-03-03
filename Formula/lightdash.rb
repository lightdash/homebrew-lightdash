class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2551.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2551.0/lightdash-cli-0.2551.0-macos-arm64.tar.gz"
      sha256 "63e7a24c78f3b75ac13d05dc1cce9f0e7d9249bcad85c5ae67444250c5ae32b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2551.0/lightdash-cli-0.2551.0-macos-x64.tar.gz"
      sha256 "6fa3108d67eae5f9dbc88910baec96e3612d39db8ed45659342a34fcecd72168"
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
