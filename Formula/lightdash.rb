class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2196.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2196.0/lightdash-cli-0.2196.0-macos-arm64.tar.gz"
      sha256 "470d5b9903986c2356c7135441abe4bfaddb25dde679470bb79f3124a7de8c91"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2196.0/lightdash-cli-0.2196.0-macos-x64.tar.gz"
      sha256 "ff780333988af1f25a48e6912073cd90763be23e797a96d908f47d7738702f8f"
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
