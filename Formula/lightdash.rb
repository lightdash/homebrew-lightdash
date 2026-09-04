class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.128.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.128.1/lightdash-cli-2.128.1-macos-arm64.tar.gz"
      sha256 "0fd7ab61a2ae154bb1727780fabb228543cf703e1a6d7f4c069fa49789f2f64c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.128.1/lightdash-cli-2.128.1-macos-x64.tar.gz"
      sha256 "68df4900d0f08a1ea5fcc14f207ec9f21ffaf5dd309fa947b33d4ff02fe5d5f7"
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
