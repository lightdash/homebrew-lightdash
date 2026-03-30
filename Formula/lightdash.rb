class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2685.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2685.1/lightdash-cli-0.2685.1-macos-arm64.tar.gz"
      sha256 "cd61f415d518bbea839f04679851f474b4e9b5fa09225ffb450fc2465ef6c5f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2685.1/lightdash-cli-0.2685.1-macos-x64.tar.gz"
      sha256 "d4154eab763d73e81acc327035d7d672a608f06a49a136d3e216b94eaf8236b0"
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
