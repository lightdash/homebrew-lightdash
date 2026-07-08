class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3334.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3334.0/lightdash-cli-0.3334.0-macos-arm64.tar.gz"
      sha256 "ff0a0f50ecf421fdfae11261fdd6c6d9b5bb689a9450aec143917c202b82655c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3334.0/lightdash-cli-0.3334.0-macos-x64.tar.gz"
      sha256 "4340df497ff3d67339b25e3836af6d7ffa55a1d77b68f077a2a47eadf1dd0a04"
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
