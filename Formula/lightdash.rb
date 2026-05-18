class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2965.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2965.1/lightdash-cli-0.2965.1-macos-arm64.tar.gz"
      sha256 "f8a4e0ec43d81e81ac3790d580f774664ceddc6f931f33d4a41a585fb181be17"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2965.1/lightdash-cli-0.2965.1-macos-x64.tar.gz"
      sha256 "a09fe650615b1d4ab053449a9d93605eb87e878dca64c036203aee628109878e"
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
