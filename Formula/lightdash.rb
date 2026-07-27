class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3484.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3484.0/lightdash-cli-0.3484.0-macos-arm64.tar.gz"
      sha256 "e7d5ba391225b0c72e110713ef4f61f993fb4662031677c167235f7590c50eec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3484.0/lightdash-cli-0.3484.0-macos-x64.tar.gz"
      sha256 "f08dda451057233cbfd5822e85dee485dc8559f33b9bfc4fea085295e9d23bd2"
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
