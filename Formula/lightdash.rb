class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2731.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2731.0/lightdash-cli-0.2731.0-macos-arm64.tar.gz"
      sha256 "22c73900b76c2a4db8f9f93f2704e98980e64dec1cfee65164b5f8090dfc68ff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2731.0/lightdash-cli-0.2731.0-macos-x64.tar.gz"
      sha256 "63c6e95c94571d9f45a33410857eed79c4cac19b82a7ca9728c85745c75124b7"
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
