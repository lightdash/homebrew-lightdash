class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2457.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.5/lightdash-cli-0.2457.5-macos-arm64.tar.gz"
      sha256 "50e438f740846bc0f98ceb73b29093913f4b1e3e6dbe58f2a28f4ac3a931177c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.5/lightdash-cli-0.2457.5-macos-x64.tar.gz"
      sha256 "18aa1fc2afc0c0afc1f911e439f85bfcc5ffd14dd642962e062c395769006aa1"
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
