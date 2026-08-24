class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.251.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.1/lightdash-cli-1.251.1-macos-arm64.tar.gz"
      sha256 "8017574098c28f75ceeb1fa101b8d382b4cfa2eae12f210e9030a79de3055791"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.1/lightdash-cli-1.251.1-macos-x64.tar.gz"
      sha256 "c7fa3217a66d296123b950cf101c6fc669824ac5b4c6816a5f6b056662b3bc53"
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
