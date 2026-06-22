class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3208.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3208.1/lightdash-cli-0.3208.1-macos-arm64.tar.gz"
      sha256 "ced0f26069440e2edebcbf9311750a43e365a24d9e7f23ae14634918f70faa93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3208.1/lightdash-cli-0.3208.1-macos-x64.tar.gz"
      sha256 "797584710d40b7ab2de0199742fce70a3567477ff914c1b2ba85d12192eed642"
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
