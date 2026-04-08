class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2740.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2740.1/lightdash-cli-0.2740.1-macos-arm64.tar.gz"
      sha256 "04aecb56ee265fa84febaac36c6db0d8cb0fad23bf487098c2d763b7b8cf8b47"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2740.1/lightdash-cli-0.2740.1-macos-x64.tar.gz"
      sha256 "75bfe117aa42a9f48468f4648c2b32c7dcf605e418ce32e4aab5d541ccbfabf1"
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
