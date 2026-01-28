class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2389.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2389.2/lightdash-cli-0.2389.2-macos-arm64.tar.gz"
      sha256 "0deef392a37a5430da433c4726ada4ddf3fdfcad806a2c371052c43310a729b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2389.2/lightdash-cli-0.2389.2-macos-x64.tar.gz"
      sha256 "c1f7fffbe0b2dc7712495b0c61d2c6108cf5374bc40b52f86baeaebff72774b4"
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
