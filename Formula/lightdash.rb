class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2774.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2774.1/lightdash-cli-0.2774.1-macos-arm64.tar.gz"
      sha256 "c63e32354fa81e87da3c08dc84cc132f3b4184ddb6ea966edd9bdcde1bd956fd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2774.1/lightdash-cli-0.2774.1-macos-x64.tar.gz"
      sha256 "a1f501eb31fda24911304a915abb11aaf508208b05d8620b7db01f6f51bf8d7f"
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
