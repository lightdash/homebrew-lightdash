class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2457.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.4/lightdash-cli-0.2457.4-macos-arm64.tar.gz"
      sha256 "262eb7e31fece6a0472dd47feb19256e45339a8ede768f924c31fcd45c7fe686"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.4/lightdash-cli-0.2457.4-macos-x64.tar.gz"
      sha256 "bb7d6b980424cabca55e31fb7ac9da856ff040b46ea6d40d1bebce5dbbde6a4d"
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
