class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.193.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.193.0/lightdash-cli-1.193.0-macos-arm64.tar.gz"
      sha256 "969acf42a885570b3f0f7de74b9e3162171b24ec376c11c8f47eb15e663efd72"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.193.0/lightdash-cli-1.193.0-macos-x64.tar.gz"
      sha256 "2079cf7b47913747368aaa92568a907a2874b3a3448c83823e4245cb08453391"
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
