class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3122.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3122.2/lightdash-cli-0.3122.2-macos-arm64.tar.gz"
      sha256 "74ab0c5eb57ebc96289e18921c2e562783b6a64a7644b924802f72c176e46a0c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3122.2/lightdash-cli-0.3122.2-macos-x64.tar.gz"
      sha256 "0ee90712feabe1984b4a40721bae350abbda286356b8eaa394e724c37bd75ca5"
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
