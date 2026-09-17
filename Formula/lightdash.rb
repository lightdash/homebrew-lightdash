class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.254.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.254.0/lightdash-cli-2.254.0-macos-arm64.tar.gz"
      sha256 "75ce366c66eef6ee3af7d02af86163435284971f26430fe3c0ffda34decf0896"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.254.0/lightdash-cli-2.254.0-macos-x64.tar.gz"
      sha256 "43cd233b13699b822d07383a22cc5d5a475d887926b6e9c980d786a8e1ae34d7"
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
