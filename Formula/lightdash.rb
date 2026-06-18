class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3192.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3192.0/lightdash-cli-0.3192.0-macos-arm64.tar.gz"
      sha256 "76aeb717a15648a997c5a934d8a23d708d347ea293ba373ba02f52718a53205e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3192.0/lightdash-cli-0.3192.0-macos-x64.tar.gz"
      sha256 "1e5d010b073b5bcbd3866a26c649b9d8974e8f1136a0a464f49a56f04d6ec0f4"
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
