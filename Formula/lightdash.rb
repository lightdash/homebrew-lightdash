class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2215.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2215.0/lightdash-cli-0.2215.0-macos-arm64.tar.gz"
      sha256 "37f7e10694a6f6bc48eb4b3328d76d7d38f0e3acec77071ec1d709cd6c89e359"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2215.0/lightdash-cli-0.2215.0-macos-x64.tar.gz"
      sha256 "346c538d9b784d0afeccb1b6f504926fcfcaabad615fe926efbe67087ebd2e79"
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
