class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2883.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2883.1/lightdash-cli-0.2883.1-macos-arm64.tar.gz"
      sha256 "61e254d5d132ea409d788a72615731bb8ed4a680b1846f67b625d12912998296"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2883.1/lightdash-cli-0.2883.1-macos-x64.tar.gz"
      sha256 "49264342c52d95a8612c01b797d0faec9045cebd5c877f5cb178fa761ce4d456"
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
