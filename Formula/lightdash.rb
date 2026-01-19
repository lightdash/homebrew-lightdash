class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2353.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2353.4/lightdash-cli-0.2353.4-macos-arm64.tar.gz"
      sha256 "4cae8f46fb0d0ef69007c557120a62be8121ac01390a61644f3d01260f2f77d9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2353.4/lightdash-cli-0.2353.4-macos-x64.tar.gz"
      sha256 "055140e2700b55d36609e0365f3ea509590295b2eddfb1d3997adac794c91947"
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
