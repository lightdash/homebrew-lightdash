class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3192.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3192.1/lightdash-cli-0.3192.1-macos-arm64.tar.gz"
      sha256 "6c6d0e88ab0662fe60d60100052304b769f2f7dd6cf0b8ae2aac77aedd7501cd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3192.1/lightdash-cli-0.3192.1-macos-x64.tar.gz"
      sha256 "c12c5a1b9023c93952d4ff7c85eba1a7444cce93ef80ca772c8c15f5b8d6c5b0"
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
