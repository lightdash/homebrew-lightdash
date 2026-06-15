class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3158.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3158.1/lightdash-cli-0.3158.1-macos-arm64.tar.gz"
      sha256 "bbebb2c0b6e0df8219450448ea59b8c9bca0712f3877ea8603cb5c7aa059c663"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3158.1/lightdash-cli-0.3158.1-macos-x64.tar.gz"
      sha256 "3556c29336a394f150cf2f9ec107d9fd7681fe69f4157f544c01c07854d42c3f"
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
