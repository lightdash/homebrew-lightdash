class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2313.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2313.1/lightdash-cli-0.2313.1-macos-arm64.tar.gz"
      sha256 "d0cede0dc8970ef940f05a710bf8972aac1f78b59b4e8bc8a3566d9a6cd3a6c9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2313.1/lightdash-cli-0.2313.1-macos-x64.tar.gz"
      sha256 "fbf0a3bba0fd64553a222ad49ef8bcdfcf80e35b4ed5327ee27da5bcd6230e29"
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
