class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2701.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2701.0/lightdash-cli-0.2701.0-macos-arm64.tar.gz"
      sha256 "0a8023aeae85648f88928187a1e82cd30b0455ac5bf6600719f4072720dcf7b3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2701.0/lightdash-cli-0.2701.0-macos-x64.tar.gz"
      sha256 "25aa3394ddc5bfe0c29dce9a04ff2b77cc72772a310ca570f17a61b84af13121"
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
