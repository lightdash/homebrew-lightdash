class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.240.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.240.2/lightdash-cli-1.240.2-macos-arm64.tar.gz"
      sha256 "72f54722329979053f188d2057d449b47dfccc105a8451c91dae907494bc4472"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.240.2/lightdash-cli-1.240.2-macos-x64.tar.gz"
      sha256 "7e9a94c93a51e9e86cc083174c8b4667bad7dfff73519fae13c805f73e88372f"
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
