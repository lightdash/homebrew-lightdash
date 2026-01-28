class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2388.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2388.0/lightdash-cli-0.2388.0-macos-arm64.tar.gz"
      sha256 "269bfbc13c8088b0681138cae33fce4004ccda5f6eac9df70f62adec4f883bed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2388.0/lightdash-cli-0.2388.0-macos-x64.tar.gz"
      sha256 "32d47320825021a273fa436266ccb46a2dc47fd3aa83eccfd6c87355694f4f5a"
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
