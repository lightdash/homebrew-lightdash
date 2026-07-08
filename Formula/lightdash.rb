class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3339.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3339.0/lightdash-cli-0.3339.0-macos-arm64.tar.gz"
      sha256 "f7cea34de314f9ae09a714236e87543fa2da2c49fb91d38f1e3d0bbbaddf97a3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3339.0/lightdash-cli-0.3339.0-macos-x64.tar.gz"
      sha256 "10677cafc690f633ee642bc9a8a0978adc79cd986440e645f8565ef52607639b"
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
