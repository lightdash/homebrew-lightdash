class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3024.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3024.3/lightdash-cli-0.3024.3-macos-arm64.tar.gz"
      sha256 "6796d545e1af16c2c887dd12952358c3acee27a05ee20d860767a13dfb936f18"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3024.3/lightdash-cli-0.3024.3-macos-x64.tar.gz"
      sha256 "cc110265f583129aeac1ae451db7532bc7647d4f2fbc3596f6170943ac88420e"
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
