class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3093.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3093.0/lightdash-cli-0.3093.0-macos-arm64.tar.gz"
      sha256 "e82a949323becc020fe2a146cfa6f7e84466bd4ebd6902c7cd72628d9952073e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3093.0/lightdash-cli-0.3093.0-macos-x64.tar.gz"
      sha256 "58d829159e996762f2400f63d001851a6784f7324268932a261d22e98e785520"
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
