class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2790.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2790.1/lightdash-cli-0.2790.1-macos-arm64.tar.gz"
      sha256 "6bc3eff7cbc8fe60d0956c2340bd54520ba8f789ead0ce9fedbf057d69d69971"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2790.1/lightdash-cli-0.2790.1-macos-x64.tar.gz"
      sha256 "c41d0285b5ee396e013a6cf4d8d2214d72ae6b9ad0cab88845b570e12c293942"
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
