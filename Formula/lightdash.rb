class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2353.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2353.2/lightdash-cli-0.2353.2-macos-arm64.tar.gz"
      sha256 "9663c02142ca8d4384c2da3a729dc496dd36c52cce5daab52cb7135f19987bd4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2353.2/lightdash-cli-0.2353.2-macos-x64.tar.gz"
      sha256 "5b2123e883c358836cb6f1f9e1d1ab67a7a3ff1eae3407cb9e2486cd1788e643"
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
