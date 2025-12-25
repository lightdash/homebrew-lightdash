class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2278.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.4/lightdash-cli-0.2278.4-macos-arm64.tar.gz"
      sha256 "2ba1a1598501e44be94e293bfb0ea9992383b460a81e30433609232e7ecb9dd0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.4/lightdash-cli-0.2278.4-macos-x64.tar.gz"
      sha256 "d1c200fdf4daf599c4d1a1518d0ec30718075ffb91802b94d76b0f8953a47ac0"
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
