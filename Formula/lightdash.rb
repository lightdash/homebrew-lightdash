class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.168.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.168.1/lightdash-cli-2.168.1-macos-arm64.tar.gz"
      sha256 "7fdf78bebf10c840aa8e5cf15dfc373b45413f4200eceab2fc6e7ba361200c83"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.168.1/lightdash-cli-2.168.1-macos-x64.tar.gz"
      sha256 "c92cb38bd35943a69e0e572b40a895a03fd70ae2d81fe16f2876eda179b5f0e8"
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
