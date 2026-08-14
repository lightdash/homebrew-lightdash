class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.159.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.0/lightdash-cli-1.159.0-macos-arm64.tar.gz"
      sha256 "81d48153a82cd735ccb8a70d41c86270c7fd35dac9c4377ca18593e6f2bae3ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.0/lightdash-cli-1.159.0-macos-x64.tar.gz"
      sha256 "70155943e3c12c08968445b259639d92f37a1d792ee6255732f4bb0130994e97"
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
