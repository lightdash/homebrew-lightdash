class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2264.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2264.0/lightdash-cli-0.2264.0-macos-arm64.tar.gz"
      sha256 "44bf85af7d25101a969efd8e18be294b32f9c7d72dfedcd07943279c4b7ba9fc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2264.0/lightdash-cli-0.2264.0-macos-x64.tar.gz"
      sha256 "2a248d17d563ad25d542b4059451b614ce29bc3e5263416d6b9ee0b5666d0fba"
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
