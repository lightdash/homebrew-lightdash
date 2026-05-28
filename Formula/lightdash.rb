class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3040.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3040.0/lightdash-cli-0.3040.0-macos-arm64.tar.gz"
      sha256 "976f7cf0813a813a81df5692dc98f01b72de86c8ccdd4e527a6f243a872f4eb1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3040.0/lightdash-cli-0.3040.0-macos-x64.tar.gz"
      sha256 "d7327ade7775be5533df711b6ca6708b2b41f07ada68550025e2916dae29623e"
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
