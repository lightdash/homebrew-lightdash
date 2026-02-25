class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2523.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2523.5/lightdash-cli-0.2523.5-macos-arm64.tar.gz"
      sha256 "470e56694585cc8b69c61e11ba9d2150d9b69cf1e51a76621c2bd5957a04c470"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2523.5/lightdash-cli-0.2523.5-macos-x64.tar.gz"
      sha256 "c519f25fc9bb553307a437cdcdc4b601b3a31d71ef49d643bcc0975995b85c6c"
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
