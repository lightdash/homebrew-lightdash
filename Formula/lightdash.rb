class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2720.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2720.4/lightdash-cli-0.2720.4-macos-arm64.tar.gz"
      sha256 "2dad4eb5126e858c7aa3184a69876eb24882a648eaa5c22b5392f2e337bde9dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2720.4/lightdash-cli-0.2720.4-macos-x64.tar.gz"
      sha256 "58a79f73d237f78ec274d39f2cb70b0c74b44d5a458b8d76cdf7f430ffd5db08"
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
