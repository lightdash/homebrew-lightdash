class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2506.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2506.1/lightdash-cli-0.2506.1-macos-arm64.tar.gz"
      sha256 "dd3e9402bdb4be606f884fbadb8f5b5677ea8a2fceb95aca0290508417cf5f9b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2506.1/lightdash-cli-0.2506.1-macos-x64.tar.gz"
      sha256 "fafcce41af48f989a02c85d0f68d28343c38bbb80bad1a21ccd480c95f1de276"
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
