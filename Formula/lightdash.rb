class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3209.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3209.0/lightdash-cli-0.3209.0-macos-arm64.tar.gz"
      sha256 "887208420b178e6ff3c2d98993de79a79fb2b71921a1042515af8b4af55e0d92"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3209.0/lightdash-cli-0.3209.0-macos-x64.tar.gz"
      sha256 "2cd6804fb1498cd485290eaf65401f6ccb79aa8513814a7b0b0cd79bcfc864f2"
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
