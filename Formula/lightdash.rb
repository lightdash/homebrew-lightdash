class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2443.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2443.1/lightdash-cli-0.2443.1-macos-arm64.tar.gz"
      sha256 "c0feb250beebb4c1d34154fa6c1c3ef150056a05c042e359f33634942340d950"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2443.1/lightdash-cli-0.2443.1-macos-x64.tar.gz"
      sha256 "d1320e8101512163d90dc6d5db0f45f1a62875a1f97495a6d8a59ee74090dfda"
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
