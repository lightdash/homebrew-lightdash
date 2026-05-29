class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3058.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3058.0/lightdash-cli-0.3058.0-macos-arm64.tar.gz"
      sha256 "24678b348e557ed98f8c06ec6014ff41738d7c6a9bd7008fa2b91d2304461513"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3058.0/lightdash-cli-0.3058.0-macos-x64.tar.gz"
      sha256 "ecaad8df5c977b470ef44ada76745b4b8ab71310fdcbe395acfc9c59d8920edc"
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
