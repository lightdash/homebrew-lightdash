class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2615.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2615.0/lightdash-cli-0.2615.0-macos-arm64.tar.gz"
      sha256 "d9869317edf3ee2f50f2d05befe59478e04be094b1c99e66a0a4d068ffb027a0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2615.0/lightdash-cli-0.2615.0-macos-x64.tar.gz"
      sha256 "b675e1d16011d09cf7bf932de45b869e1fcc4a3fa05ff97f2913b42b1d853bac"
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
