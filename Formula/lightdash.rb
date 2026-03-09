class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2589.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2589.0/lightdash-cli-0.2589.0-macos-arm64.tar.gz"
      sha256 "05538c151fa6c3fb7aea87f21c4da8025161f3213b1203c98658fa98fd9a3add"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2589.0/lightdash-cli-0.2589.0-macos-x64.tar.gz"
      sha256 "2282bb7d0c9697de8a59defbf6ed65c88841e60491c2f011e10c8f0cf56054bd"
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
