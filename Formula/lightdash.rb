class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2702.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2702.2/lightdash-cli-0.2702.2-macos-arm64.tar.gz"
      sha256 "4cfa5494a9da408ba0a15dd62989ef14477ceb5a5992824e96007f0f424da025"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2702.2/lightdash-cli-0.2702.2-macos-x64.tar.gz"
      sha256 "1286899bf225dc2e09ee4f66c3b146976df55e714c119dfb3647e886bdb77307"
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
