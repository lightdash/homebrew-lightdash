class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3099.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3099.0/lightdash-cli-0.3099.0-macos-arm64.tar.gz"
      sha256 "1dbac19879c4f587a7963b87263b41be2761ac3a0a29edc7ddbdb6c446fdbdae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3099.0/lightdash-cli-0.3099.0-macos-x64.tar.gz"
      sha256 "ca603c8f0cf9fc4bcb14311e91e9696687bbba3431e699635c1c38f1abf437d7"
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
