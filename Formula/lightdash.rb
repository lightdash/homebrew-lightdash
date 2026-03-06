class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2580.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2580.2/lightdash-cli-0.2580.2-macos-arm64.tar.gz"
      sha256 "0c7500a081235ef57739608bbc9c714388cfdcb1dcf28d9d43f53b829bff0e5a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2580.2/lightdash-cli-0.2580.2-macos-x64.tar.gz"
      sha256 "7e162de501667712c1a4d855c66a109a35fe4e1220912eac3409218e4df53986"
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
