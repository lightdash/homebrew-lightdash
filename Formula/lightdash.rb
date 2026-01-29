class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2399.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2399.2/lightdash-cli-0.2399.2-macos-arm64.tar.gz"
      sha256 "bbce42a38b072bb8f763ec0ffb0ce9c8d93433aef6a2c24b395ac73d8511b24f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2399.2/lightdash-cli-0.2399.2-macos-x64.tar.gz"
      sha256 "e4d9133e4a03d4395e6223a9a8f53bd8b6b7331b3d3bbd7b7fde0ed258df308e"
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
