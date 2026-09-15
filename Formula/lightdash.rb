class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.219.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.219.0/lightdash-cli-2.219.0-macos-arm64.tar.gz"
      sha256 "bf336d450f72c11821bd9894511dc4daf95f6e4fc90946294f0b147c5f11c887"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.219.0/lightdash-cli-2.219.0-macos-x64.tar.gz"
      sha256 "227abd1f5c573a3a005e167bd0ce08503ae8278bde38269950bdb2815a031090"
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
