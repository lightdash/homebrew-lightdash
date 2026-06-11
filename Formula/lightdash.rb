class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3138.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3138.2/lightdash-cli-0.3138.2-macos-arm64.tar.gz"
      sha256 "b113ea3539fc8c6b178345ff25b2b1a944438a2c6b1a457c0536a9c4786c72f6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3138.2/lightdash-cli-0.3138.2-macos-x64.tar.gz"
      sha256 "2b205637c8aedf49a20eb62be531ee86d67543c6c1214673301007b24f7b3b11"
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
