class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2331.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2331.3/lightdash-cli-0.2331.3-macos-arm64.tar.gz"
      sha256 "11cba2a6ba6b322fe210265b5903f3d884bd15366ef2218fa6fda2cab3219649"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2331.3/lightdash-cli-0.2331.3-macos-x64.tar.gz"
      sha256 "e127373a961ce4c3932216730544744dc3f99621bd1a8e9082f70ba3cd6521b8"
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
