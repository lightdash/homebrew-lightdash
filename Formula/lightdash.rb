class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2483.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2483.1/lightdash-cli-0.2483.1-macos-arm64.tar.gz"
      sha256 "e585b95b013efcce6bdac3ace917d888c8fcf2a792d2371f08b9405dd7a51e13"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2483.1/lightdash-cli-0.2483.1-macos-x64.tar.gz"
      sha256 "e100f917d7a2a7e2973c4a23c150ba9b03f3945e2742c843102a23d6e4318e74"
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
