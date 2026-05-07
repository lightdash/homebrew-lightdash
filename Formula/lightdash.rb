class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2889.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2889.1/lightdash-cli-0.2889.1-macos-arm64.tar.gz"
      sha256 "af1e4ae99e5282528332e6420cfcbe33ff630efe4d7bc21abfc31bcee5adb585"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2889.1/lightdash-cli-0.2889.1-macos-x64.tar.gz"
      sha256 "55890720249525d634391b2dc2750b5c1367966d4c54bd5751c87e013125eca5"
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
