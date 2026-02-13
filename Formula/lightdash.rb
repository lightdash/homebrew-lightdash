class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2467.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2467.0/lightdash-cli-0.2467.0-macos-arm64.tar.gz"
      sha256 "a562a113c13b0e37a82a7ad894d97fffea0ff3ce7c891cb78699dcb0f93d640b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2467.0/lightdash-cli-0.2467.0-macos-x64.tar.gz"
      sha256 "9caa378e87b1835cb45cc29b1b5ead9f0229cb771909b17513a8732baf1f69e8"
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
