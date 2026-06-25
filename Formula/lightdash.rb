class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3246.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3246.0/lightdash-cli-0.3246.0-macos-arm64.tar.gz"
      sha256 "e5df11906ec940da67eec92533178eda6255507ecebb5283379ceaa19dedc3a0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3246.0/lightdash-cli-0.3246.0-macos-x64.tar.gz"
      sha256 "a6b8e61b343254a7ef01ce1f247438c6206e1279b7f1732a47729a317b8c140f"
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
