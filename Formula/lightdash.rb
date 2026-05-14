class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2946.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2946.0/lightdash-cli-0.2946.0-macos-arm64.tar.gz"
      sha256 "6afc45bcfa2152e667d7aefde70ce557cf4b5fabc94a2a8534ed68d598d5ce55"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2946.0/lightdash-cli-0.2946.0-macos-x64.tar.gz"
      sha256 "ffeaf40cd142f1ad4c838a1180b35185ecd4d0610afcedbf8849c88b8353c8cd"
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
