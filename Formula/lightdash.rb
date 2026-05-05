class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2865.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2865.0/lightdash-cli-0.2865.0-macos-arm64.tar.gz"
      sha256 "8f9cf1445b34a7e0dbd5790d57dc32f8106d368144646454fa7321311ba03895"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2865.0/lightdash-cli-0.2865.0-macos-x64.tar.gz"
      sha256 "bd1b63ec054a319879484c3c567dab723fe471b7f57561e8d4287e03bd89af3d"
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
