class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2772.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2772.0/lightdash-cli-0.2772.0-macos-arm64.tar.gz"
      sha256 "350adadaee8d5915355797d164f3ee4642fb0272dbae16f919e7fe715a853243"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2772.0/lightdash-cli-0.2772.0-macos-x64.tar.gz"
      sha256 "9542d2e2e67ba660f0084b73a3a8fe739ffb0faf4b285d00ac4f75b92acb173f"
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
