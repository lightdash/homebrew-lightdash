class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3219.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3219.0/lightdash-cli-0.3219.0-macos-arm64.tar.gz"
      sha256 "2b7ac1625f1e0b9467ed5e95ff2676831e2ab6d06d7f58b0a40fbb914fc9f465"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3219.0/lightdash-cli-0.3219.0-macos-x64.tar.gz"
      sha256 "6d573e55bedef38a66931d5f77473e8f183e5d20c27b834cf507d7d49f491a30"
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
