class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3001.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3001.1/lightdash-cli-0.3001.1-macos-arm64.tar.gz"
      sha256 "3c84594700e36907b28baa216eb885fdd70bc1ad83b38c38ad82e98c4f31dd6d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3001.1/lightdash-cli-0.3001.1-macos-x64.tar.gz"
      sha256 "907f53c53ca958d104c27cd0c38b9a15cf983739472f8a933a2a67883dac1b4e"
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
