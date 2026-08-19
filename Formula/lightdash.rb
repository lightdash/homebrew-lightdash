class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.203.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.203.0/lightdash-cli-1.203.0-macos-arm64.tar.gz"
      sha256 "63f5fcf2eb03a2cc66d3faaf7f6e10577fd5de7c4523eba39924c8daf79d4d01"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.203.0/lightdash-cli-1.203.0-macos-x64.tar.gz"
      sha256 "95e405532668a26c286d3bb1ef2f13a4dbed1d2b172dc4b1dfd75debb250ef16"
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
