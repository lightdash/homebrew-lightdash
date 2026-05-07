class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2885.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2885.0/lightdash-cli-0.2885.0-macos-arm64.tar.gz"
      sha256 "bec703db2cb0199231f5a5e72de122140a7510aee38f4c7bc1a28e411743cdd3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2885.0/lightdash-cli-0.2885.0-macos-x64.tar.gz"
      sha256 "6bbd5e554a53dd0dfe8d7bac08fd13e6745f74f023622c46a5e95887e347e810"
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
