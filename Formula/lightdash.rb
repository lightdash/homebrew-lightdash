class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2569.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2569.1/lightdash-cli-0.2569.1-macos-arm64.tar.gz"
      sha256 "cb294c8e1f9978e188227e289cc72bc43efd9b85ac7cc34546f9e5a75e075481"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2569.1/lightdash-cli-0.2569.1-macos-x64.tar.gz"
      sha256 "e3af61564b6f217845e336b32d213d1b83592b81e3ffa46067ea076456d38832"
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
